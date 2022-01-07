; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_vport.c_lpfc_valid_wwn_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_vport.c_lpfc_valid_wwn_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_name = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_VPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"1822 Invalid %s: %02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_name*, i8*)* @lpfc_valid_wwn_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_valid_wwn_format(%struct.lpfc_hba* %0, %struct.lpfc_name* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_name*, align 8
  %7 = alloca i8*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_name* %1, %struct.lpfc_name** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.lpfc_name*, %struct.lpfc_name** %6, align 8
  %9 = getelementptr inbounds %struct.lpfc_name, %struct.lpfc_name* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %34

16:                                               ; preds = %3
  %17 = load %struct.lpfc_name*, %struct.lpfc_name** %6, align 8
  %18 = getelementptr inbounds %struct.lpfc_name, %struct.lpfc_name* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 15
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %16
  %26 = load %struct.lpfc_name*, %struct.lpfc_name** %6, align 8
  %27 = getelementptr inbounds %struct.lpfc_name, %struct.lpfc_name* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 15
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25, %3
  store i32 1, i32* %4, align 4
  br label %89

35:                                               ; preds = %25, %16
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %37 = load i32, i32* @KERN_ERR, align 4
  %38 = load i32, i32* @LOG_VPORT, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.lpfc_name*, %struct.lpfc_name** %6, align 8
  %41 = getelementptr inbounds %struct.lpfc_name, %struct.lpfc_name* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.lpfc_name*, %struct.lpfc_name** %6, align 8
  %47 = getelementptr inbounds %struct.lpfc_name, %struct.lpfc_name* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.lpfc_name*, %struct.lpfc_name** %6, align 8
  %53 = getelementptr inbounds %struct.lpfc_name, %struct.lpfc_name* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.lpfc_name*, %struct.lpfc_name** %6, align 8
  %59 = getelementptr inbounds %struct.lpfc_name, %struct.lpfc_name* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.lpfc_name*, %struct.lpfc_name** %6, align 8
  %65 = getelementptr inbounds %struct.lpfc_name, %struct.lpfc_name* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.lpfc_name*, %struct.lpfc_name** %6, align 8
  %71 = getelementptr inbounds %struct.lpfc_name, %struct.lpfc_name* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.lpfc_name*, %struct.lpfc_name** %6, align 8
  %77 = getelementptr inbounds %struct.lpfc_name, %struct.lpfc_name* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 6
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.lpfc_name*, %struct.lpfc_name** %6, align 8
  %83 = getelementptr inbounds %struct.lpfc_name, %struct.lpfc_name* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 7
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %45, i32 %51, i32 %57, i32 %63, i32 %69, i32 %75, i32 %81, i32 %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %35, %34
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
