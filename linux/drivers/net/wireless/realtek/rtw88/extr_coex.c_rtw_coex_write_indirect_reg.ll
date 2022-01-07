; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_write_indirect_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_write_indirect_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"failed to write indirect register\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_coex_write_indirect_reg(%struct.rtw_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @__ffs(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @rtw_coex_read_indirect_reg(%struct.rtw_dev* %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %22, %23
  %25 = or i32 %19, %24
  store i32 %25, i32* %10, align 4
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @ltecoex_reg_write(%struct.rtw_dev* %26, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %33 = call i32 @rtw_err(%struct.rtw_dev* %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %4
  ret void
}

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @rtw_coex_read_indirect_reg(%struct.rtw_dev*, i32) #1

declare dso_local i32 @ltecoex_reg_write(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
