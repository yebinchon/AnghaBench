; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_print_host_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_print_host_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"UFS Host state=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"lrb in use=0x%lx, outstanding reqs=0x%lx tasks=0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"saved_err=0x%x, saved_uic_err=0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Device power mode=%d, UIC link state=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"PM in progress=%d, sys. suspended=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Auto BKOPS=%d, Host self-block=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Clk gate=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"error handling flags=0x%x, req. abort count=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Host capabilities=0x%x, caps=0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"quirks=0x%x, dev. quirks=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*)* @ufshcd_print_host_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_print_host_state(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %3 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %4 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %7 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %6, i32 0, i32 19
  %8 = load i32, i32* %7, align 8
  %9 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %11 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %14 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %13, i32 0, i32 18
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %17 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %16, i32 0, i32 17
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %20 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %19, i32 0, i32 16
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %12, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %18, i32 %21)
  %23 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %24 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %27 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %26, i32 0, i32 15
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %30 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %29, i32 0, i32 14
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 %31)
  %33 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %34 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %37 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %36, i32 0, i32 13
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %40 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %39, i32 0, i32 12
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %44 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %47 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %50 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %48, i32 %51)
  %53 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %54 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %57 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %60 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %59, i32 0, i32 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %58, i32 %63)
  %65 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %66 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %69 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %68, i32 0, i32 7
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %71)
  %73 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %74 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %77 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %80 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %75, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %78, i32 %81)
  %83 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %84 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %87 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %90 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %88, i32 %91)
  %93 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %94 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %97 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %100 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %98, i32 %101)
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
