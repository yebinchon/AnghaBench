; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_reset_scsi_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_reset_scsi_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32, i32, i32 }

@nc_sien = common dso_local global i32 0, align 4
@RST = common dso_local global i32 0, align 4
@nc_stest3 = common dso_local global i32 0, align 4
@TE = common dso_local global i32 0, align 4
@nc_dcntl = common dso_local global i32 0, align 4
@IRQM = common dso_local global i32 0, align 4
@nc_scntl1 = common dso_local global i32 0, align 4
@CRST = common dso_local global i32 0, align 4
@nc_mbox1 = common dso_local global i32 0, align 4
@SYM_SETUP_SCSI_BUS_CHECK = common dso_local global i32 0, align 4
@nc_sstat0 = common dso_local global i32 0, align 4
@nc_sstat2 = common dso_local global i32 0, align 4
@nc_sbdl = common dso_local global i32 0, align 4
@nc_sbcl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"%s: suspicious SCSI data while resetting the BUS.\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"%s: %sdp0,d7-0,rst,req,ack,bsy,sel,atn,msg,c/d,i/o = 0x%lx, expecting 0x%lx\0A\00", align 1
@FE_WIDE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"dp1,d15-8,\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sym_reset_scsi_bus(%struct.sym_hcb* %0, i32 %1) #0 {
  %3 = alloca %struct.sym_hcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %8 = call i32 @sym_soft_reset(%struct.sym_hcb* %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %13 = load i32, i32* @nc_sien, align 4
  %14 = load i32, i32* @RST, align 4
  %15 = call i32 @OUTW(%struct.sym_hcb* %12, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %18 = load i32, i32* @nc_stest3, align 4
  %19 = load i32, i32* @TE, align 4
  %20 = call i32 @OUTB(%struct.sym_hcb* %17, i32 %18, i32 %19)
  %21 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %22 = load i32, i32* @nc_dcntl, align 4
  %23 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %24 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IRQM, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @OUTB(%struct.sym_hcb* %21, i32 %22, i32 %27)
  %29 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %30 = load i32, i32* @nc_scntl1, align 4
  %31 = load i32, i32* @CRST, align 4
  %32 = call i32 @OUTB(%struct.sym_hcb* %29, i32 %30, i32 %31)
  %33 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %34 = load i32, i32* @nc_mbox1, align 4
  %35 = call i32 @INB(%struct.sym_hcb* %33, i32 %34)
  %36 = call i32 @udelay(i32 200)
  %37 = load i32, i32* @SYM_SETUP_SCSI_BUS_CHECK, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %16
  br label %105

40:                                               ; preds = %16
  %41 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %42 = load i32, i32* @nc_sstat0, align 4
  %43 = call i32 @INB(%struct.sym_hcb* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 2
  %46 = shl i32 %45, 7
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 1
  %49 = shl i32 %48, 17
  %50 = add nsw i32 %46, %49
  store i32 %50, i32* %5, align 4
  %51 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %52 = load i32, i32* @nc_sstat2, align 4
  %53 = call i32 @INB(%struct.sym_hcb* %51, i32 %52)
  %54 = and i32 %53, 1
  %55 = shl i32 %54, 26
  %56 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %57 = load i32, i32* @nc_sbdl, align 4
  %58 = call i32 @INW(%struct.sym_hcb* %56, i32 %57)
  %59 = and i32 %58, 255
  %60 = shl i32 %59, 9
  %61 = or i32 %55, %60
  %62 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %63 = load i32, i32* @nc_sbdl, align 4
  %64 = call i32 @INW(%struct.sym_hcb* %62, i32 %63)
  %65 = and i32 %64, 65280
  %66 = shl i32 %65, 10
  %67 = or i32 %61, %66
  %68 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %69 = load i32, i32* @nc_sbcl, align 4
  %70 = call i32 @INB(%struct.sym_hcb* %68, i32 %69)
  %71 = or i32 %67, %70
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %75 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %40
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, 262143
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %40
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 256
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %86 = call i8* @sym_name(%struct.sym_hcb* %85)
  %87 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %86)
  %88 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %89 = call i8* @sym_name(%struct.sym_hcb* %88)
  %90 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %91 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @FE_WIDE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %98 = load i32, i32* %5, align 4
  %99 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i8* %89, i8* %97, i32 %98, i32 256)
  %100 = load i32, i32* @SYM_SETUP_SCSI_BUS_CHECK, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %103

102:                                              ; preds = %84
  store i32 1, i32* %6, align 4
  br label %103

103:                                              ; preds = %102, %84
  br label %104

104:                                              ; preds = %103, %81
  br label %105

105:                                              ; preds = %104, %39
  %106 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %107 = load i32, i32* @nc_scntl1, align 4
  %108 = call i32 @OUTB(%struct.sym_hcb* %106, i32 %107, i32 0)
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @sym_soft_reset(%struct.sym_hcb*) #1

declare dso_local i32 @OUTW(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @OUTB(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @INB(%struct.sym_hcb*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @INW(%struct.sym_hcb*, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @sym_name(%struct.sym_hcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
