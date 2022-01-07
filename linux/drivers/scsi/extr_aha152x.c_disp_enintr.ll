; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_disp_enintr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_disp_enintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }

@SIMODE0 = common dso_local global i32 0, align 4
@SIMODE1 = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"enabled interrupts (%s%s%s%s%s%s%s%s%s%s%s%s%s%s)\0A\00", align 1
@ENSELDO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ENSELDO \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENSELDI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"ENSELDI \00", align 1
@ENSELINGO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"ENSELINGO \00", align 1
@ENSWRAP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"ENSWRAP \00", align 1
@ENSDONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"ENSDONE \00", align 1
@ENSPIORDY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"ENSPIORDY \00", align 1
@ENDMADONE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"ENDMADONE \00", align 1
@ENSELTIMO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"ENSELTIMO \00", align 1
@ENATNTARG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"ENATNTARG \00", align 1
@ENPHASEMIS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"ENPHASEMIS \00", align 1
@ENBUSFREE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"ENBUSFREE \00", align 1
@ENSCSIPERR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"ENSCSIPERR \00", align 1
@ENPHASECHG = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"ENPHASECHG \00", align 1
@ENREQINIT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"ENREQINIT \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @disp_enintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disp_enintr(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %5 = load i32, i32* @SIMODE0, align 4
  %6 = call i32 @GETPORT(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @SIMODE1, align 4
  %8 = call i32 @GETPORT(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @KERN_DEBUG, align 4
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ENSELDO, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @ENSELDI, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @ENSELINGO, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @ENSWRAP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @ENSDONE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @ENSPIORDY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @ENDMADONE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @ENSELTIMO, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @ENATNTARG, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @ENPHASEMIS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @ENBUSFREE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @ENSCSIPERR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @ENPHASECHG, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @ENREQINIT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %95 = call i32 @shost_printk(i32 %9, %struct.Scsi_Host* %10, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %22, i8* %28, i8* %34, i8* %40, i8* %46, i8* %52, i8* %58, i8* %64, i8* %70, i8* %76, i8* %82, i8* %88, i8* %94)
  ret void
}

declare dso_local i32 @GETPORT(i32) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
