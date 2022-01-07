; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_util.c_rtw_restore_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_util.c_rtw_restore_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_backup_info = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_restore_reg(%struct.rtw_dev* %0, %struct.rtw_backup_info* %1, i32 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca %struct.rtw_backup_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store %struct.rtw_backup_info* %1, %struct.rtw_backup_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %43, %3
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %5, align 8
  %17 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %5, align 8
  %20 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %5, align 8
  %23 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %41 [
    i32 1, label %26
    i32 2, label %31
    i32 4, label %36
  ]

26:                                               ; preds = %15
  %27 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @rtw_write8(%struct.rtw_dev* %27, i32 %28, i32 %29)
  br label %42

31:                                               ; preds = %15
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @rtw_write16(%struct.rtw_dev* %32, i32 %33, i32 %34)
  br label %42

36:                                               ; preds = %15
  %37 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @rtw_write32(%struct.rtw_dev* %37, i32 %38, i32 %39)
  br label %42

41:                                               ; preds = %15
  br label %42

42:                                               ; preds = %41, %36, %31, %26
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  %46 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %5, align 8
  %47 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %46, i32 1
  store %struct.rtw_backup_info* %47, %struct.rtw_backup_info** %5, align 8
  br label %11

48:                                               ; preds = %11
  ret void
}

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write16(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
