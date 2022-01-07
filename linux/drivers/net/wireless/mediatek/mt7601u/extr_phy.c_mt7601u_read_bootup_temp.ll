; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_read_bootup_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_read_bootup_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }

@MT_RF_SETTING_0 = common dso_local global i32 0, align 4
@MT_RF_BYPASS_0 = common dso_local global i32 0, align 4
@BBP_R47_F_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7601u_dev*)* @mt7601u_read_bootup_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_read_bootup_temp(%struct.mt7601u_dev* %0) #0 {
  %2 = alloca %struct.mt7601u_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %2, align 8
  %8 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %9 = load i32, i32* @MT_RF_SETTING_0, align 4
  %10 = call i32 @mt7601u_rr(%struct.mt7601u_dev* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %12 = load i32, i32* @MT_RF_BYPASS_0, align 4
  %13 = call i32 @mt7601u_rr(%struct.mt7601u_dev* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %15 = load i32, i32* @MT_RF_BYPASS_0, align 4
  %16 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %14, i32 %15, i32 0)
  %17 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %18 = load i32, i32* @MT_RF_SETTING_0, align 4
  %19 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %17, i32 %18, i32 16)
  %20 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %21 = load i32, i32* @MT_RF_BYPASS_0, align 4
  %22 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %20, i32 %21, i32 16)
  %23 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %24 = call i32 @mt7601u_bbp_rmw(%struct.mt7601u_dev* %23, i32 47, i32 0, i32 16)
  store i32 %24, i32* %3, align 4
  %25 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %26 = call i32 @mt7601u_bbp_wr(%struct.mt7601u_dev* %25, i32 22, i32 64)
  store i32 100, i32* %7, align 4
  br label %27

27:                                               ; preds = %39, %1
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 16
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  br i1 %35, label %36, label %42

36:                                               ; preds = %34
  %37 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %38 = call i32 @mt7601u_bbp_rr(%struct.mt7601u_dev* %37, i32 47)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %7, align 4
  br label %27

42:                                               ; preds = %34
  %43 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @BBP_R47_F_TEMP, align 4
  %46 = call i32 @mt7601u_bbp_r47_get(%struct.mt7601u_dev* %43, i32 %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %48 = call i32 @mt7601u_bbp_wr(%struct.mt7601u_dev* %47, i32 22, i32 0)
  %49 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %50 = call i32 @mt7601u_bbp_rr(%struct.mt7601u_dev* %49, i32 21)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, 2
  store i32 %52, i32* %3, align 4
  %53 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @mt7601u_bbp_wr(%struct.mt7601u_dev* %53, i32 21, i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = and i32 %56, -3
  store i32 %57, i32* %3, align 4
  %58 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @mt7601u_bbp_wr(%struct.mt7601u_dev* %58, i32 21, i32 %59)
  %61 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %62 = load i32, i32* @MT_RF_BYPASS_0, align 4
  %63 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %61, i32 %62, i32 0)
  %64 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %65 = load i32, i32* @MT_RF_SETTING_0, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %64, i32 %65, i32 %66)
  %68 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %69 = load i32, i32* @MT_RF_BYPASS_0, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %68, i32 %69, i32 %70)
  %72 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @trace_read_temp(%struct.mt7601u_dev* %72, i32 %73)
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @mt7601u_rr(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @mt7601u_wr(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @mt7601u_bbp_rmw(%struct.mt7601u_dev*, i32, i32, i32) #1

declare dso_local i32 @mt7601u_bbp_wr(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @mt7601u_bbp_rr(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @mt7601u_bbp_r47_get(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @trace_read_temp(%struct.mt7601u_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
