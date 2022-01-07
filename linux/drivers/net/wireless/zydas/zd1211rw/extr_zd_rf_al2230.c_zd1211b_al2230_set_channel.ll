; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_rf_al2230.c_zd1211b_al2230_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_rf_al2230.c_zd1211b_al2230_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_rf = type { i32 }
%struct.zd_chip = type { i32 }

@zd1211b_al2230_table = common dso_local global i32** null, align 8
@zd1211b_ioreqs_shared_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_rf*, i32)* @zd1211b_al2230_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1211b_al2230_set_channel(%struct.zd_rf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zd_rf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.zd_chip*, align 8
  store %struct.zd_rf* %0, %struct.zd_rf** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32**, i32*** @zd1211b_al2230_table, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32*, i32** %9, i64 %12
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %16 = call %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf* %15)
  store %struct.zd_chip* %16, %struct.zd_chip** %8, align 8
  %17 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %18 = load i32, i32* @zd1211b_ioreqs_shared_1, align 4
  %19 = load i32, i32* @zd1211b_ioreqs_shared_1, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %17, i32 %18, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %37

26:                                               ; preds = %2
  %27 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @zd_rfwritev_cr_locked(%struct.zd_chip* %27, i32* %28, i32 3)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %37

34:                                               ; preds = %26
  %35 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %36 = call i32 @zd1211b_al2230_finalize_rf(%struct.zd_chip* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %32, %24
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf*) #1

declare dso_local i32 @zd_iowrite16a_locked(%struct.zd_chip*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @zd_rfwritev_cr_locked(%struct.zd_chip*, i32*, i32) #1

declare dso_local i32 @zd1211b_al2230_finalize_rf(%struct.zd_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
