; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_cfg_bb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_cfg_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_table = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_phy_cfg_bb(%struct.rtw_dev* %0, %struct.rtw_table* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca %struct.rtw_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store %struct.rtw_table* %1, %struct.rtw_table** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp eq i32 %9, 254
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = call i32 @msleep(i32 50)
  br label %48

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 253
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @mdelay(i32 5)
  br label %47

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 252
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @mdelay(i32 1)
  br label %46

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 251
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @usleep_range(i32 50, i32 60)
  br label %45

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 250
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @udelay(i32 5)
  br label %44

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 249
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @udelay(i32 1)
  br label %43

38:                                               ; preds = %33
  %39 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @rtw_write32(%struct.rtw_dev* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %36
  br label %44

44:                                               ; preds = %43, %31
  br label %45

45:                                               ; preds = %44, %26
  br label %46

46:                                               ; preds = %45, %21
  br label %47

47:                                               ; preds = %46, %16
  br label %48

48:                                               ; preds = %47, %11
  ret void
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
