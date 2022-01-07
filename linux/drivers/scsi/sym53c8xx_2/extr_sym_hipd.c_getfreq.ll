; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_getfreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_getfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32 }

@nc_sien = common dso_local global i32 0, align 4
@nc_sist = common dso_local global i32 0, align 4
@nc_dien = common dso_local global i32 0, align 4
@FE_C10 = common dso_local global i32 0, align 4
@GEN = common dso_local global i32 0, align 4
@nc_istat1 = common dso_local global i32 0, align 4
@SIRQD = common dso_local global i32 0, align 4
@nc_scntl3 = common dso_local global i32 0, align 4
@nc_stime1 = common dso_local global i32 0, align 4
@sym_verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: Delay (GEN=%d): %u msec, %u KHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_hcb*, i32)* @getfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getfreq(%struct.sym_hcb* %0, i32 %1) #0 {
  %3 = alloca %struct.sym_hcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %8 = load i32, i32* @nc_sien, align 4
  %9 = call i32 @OUTW(%struct.sym_hcb* %7, i32 %8, i32 0)
  %10 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %11 = load i32, i32* @nc_sist, align 4
  %12 = call i32 @INW(%struct.sym_hcb* %10, i32 %11)
  %13 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %14 = load i32, i32* @nc_dien, align 4
  %15 = call i32 @OUTB(%struct.sym_hcb* %13, i32 %14, i32 0)
  %16 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %17 = load i32, i32* @nc_sist, align 4
  %18 = call i32 @INW(%struct.sym_hcb* %16, i32 %17)
  %19 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %20 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FE_C10, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %27 = load i32, i32* @nc_sien, align 4
  %28 = load i32, i32* @GEN, align 4
  %29 = call i32 @OUTW(%struct.sym_hcb* %26, i32 %27, i32 %28)
  %30 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %31 = load i32, i32* @nc_istat1, align 4
  %32 = load i32, i32* @SIRQD, align 4
  %33 = call i32 @OUTB(%struct.sym_hcb* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %25, %2
  %35 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %36 = load i32, i32* @nc_scntl3, align 4
  %37 = call i32 @OUTB(%struct.sym_hcb* %35, i32 %36, i32 4)
  %38 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %39 = load i32, i32* @nc_stime1, align 4
  %40 = call i32 @OUTB(%struct.sym_hcb* %38, i32 %39, i32 0)
  %41 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %42 = load i32, i32* @nc_stime1, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @OUTB(%struct.sym_hcb* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %58, %34
  %46 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %47 = load i32, i32* @nc_sist, align 4
  %48 = call i32 @INW(%struct.sym_hcb* %46, i32 %47)
  %49 = load i32, i32* @GEN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %5, align 4
  %55 = icmp ult i32 %53, 100000
  br label %56

56:                                               ; preds = %52, %45
  %57 = phi i1 [ false, %45 ], [ %55, %52 ]
  br i1 %57, label %58, label %60

58:                                               ; preds = %56
  %59 = call i32 @udelay(i32 250)
  br label %45

60:                                               ; preds = %56
  %61 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %62 = load i32, i32* @nc_stime1, align 4
  %63 = call i32 @OUTB(%struct.sym_hcb* %61, i32 %62, i32 0)
  %64 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %65 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @FE_C10, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %60
  %71 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %72 = load i32, i32* @nc_sien, align 4
  %73 = call i32 @OUTW(%struct.sym_hcb* %71, i32 %72, i32 0)
  %74 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %75 = load i32, i32* @nc_istat1, align 4
  %76 = call i32 @OUTB(%struct.sym_hcb* %74, i32 %75, i32 0)
  br label %77

77:                                               ; preds = %70, %60
  %78 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %79 = load i32, i32* @nc_scntl3, align 4
  %80 = call i32 @OUTB(%struct.sym_hcb* %78, i32 %79, i32 0)
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i32, i32* %4, align 4
  %85 = shl i32 1, %84
  %86 = mul nsw i32 %85, 17360
  %87 = load i32, i32* %5, align 4
  %88 = udiv i32 %86, %87
  br label %90

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %83
  %91 = phi i32 [ %88, %83 ], [ 0, %89 ]
  store i32 %91, i32* %6, align 4
  %92 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %93 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @FE_C10, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load i32, i32* %6, align 4
  %100 = mul i32 %99, 2
  %101 = udiv i32 %100, 3
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %98, %90
  %103 = load i32, i32* @sym_verbose, align 4
  %104 = icmp sge i32 %103, 2
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %107 = call i8* @sym_name(%struct.sym_hcb* %106)
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %5, align 4
  %110 = udiv i32 %109, 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %107, i32 %108, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %105, %102
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @OUTW(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @INW(%struct.sym_hcb*, i32) #1

declare dso_local i32 @OUTB(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @sym_name(%struct.sym_hcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
