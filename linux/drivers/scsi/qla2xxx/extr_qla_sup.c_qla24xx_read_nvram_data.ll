; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla24xx_read_nvram_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla24xx_read_nvram_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @qla24xx_read_nvram_data(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qla_hw_data*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  store %struct.qla_hw_data* %15, %struct.qla_hw_data** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %11, align 8
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %19 = call i64 @IS_P3P_TYPE(%struct.qla_hw_data* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %5, align 8
  br label %52

23:                                               ; preds = %4
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @nvram_data_addr(%struct.qla_hw_data* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = ashr i32 %27, 2
  store i32 %28, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %43, %23
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = call i64 @qla24xx_read_flash_dword(%struct.qla_hw_data* %34, i32 %35, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %50

40:                                               ; preds = %33
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @cpu_to_le32s(i32* %41)
  br label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %11, align 8
  br label %29

50:                                               ; preds = %39, %29
  %51 = load i8*, i8** %7, align 8
  store i8* %51, i8** %5, align 8
  br label %52

52:                                               ; preds = %50, %21
  %53 = load i8*, i8** %5, align 8
  ret i8* %53
}

declare dso_local i64 @IS_P3P_TYPE(%struct.qla_hw_data*) #1

declare dso_local i32 @nvram_data_addr(%struct.qla_hw_data*, i32) #1

declare dso_local i64 @qla24xx_read_flash_dword(%struct.qla_hw_data*, i32, i32*) #1

declare dso_local i32 @cpu_to_le32s(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
