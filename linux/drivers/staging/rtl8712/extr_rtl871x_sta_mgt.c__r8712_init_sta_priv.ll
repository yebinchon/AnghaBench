; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_sta_mgt.c__r8712_init_sta_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_sta_mgt.c__r8712_init_sta_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_priv = type { i32, i32, %struct.TYPE_2__, i32*, i64, %struct.TYPE_2__, %struct.TYPE_2__, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.sta_info = type { i32 }

@NUM_STA = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_r8712_init_sta_priv(%struct.sta_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sta_priv*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i32, align 4
  store %struct.sta_priv* %0, %struct.sta_priv** %3, align 8
  %6 = load i32, i32* @NUM_STA, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 4, %7
  %9 = add i64 %8, 4
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call i64 @kmalloc(i32 %10, i32 %11)
  %13 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %14 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %13, i32 0, i32 9
  store i64 %12, i64* %14, align 8
  %15 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %16 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %15, i32 0, i32 9
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %86

22:                                               ; preds = %1
  %23 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %24 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %23, i32 0, i32 9
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 4
  %27 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %28 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %27, i32 0, i32 9
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = and i32 %30, 3
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %26, %32
  %34 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %35 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %34, i32 0, i32 4
  store i64 %33, i64* %35, align 8
  %36 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %37 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %36, i32 0, i32 2
  %38 = call i32 @_init_queue(%struct.TYPE_2__* %37)
  %39 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %40 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %39, i32 0, i32 8
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %43 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %42, i32 0, i32 7
  store i64 0, i64* %43, align 8
  %44 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %45 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %44, i32 0, i32 6
  %46 = call i32 @_init_queue(%struct.TYPE_2__* %45)
  %47 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %48 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %47, i32 0, i32 5
  %49 = call i32 @_init_queue(%struct.TYPE_2__* %48)
  %50 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %51 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.sta_info*
  store %struct.sta_info* %53, %struct.sta_info** %4, align 8
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %76, %22
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @NUM_STA, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %60 = call i32 @_init_stainfo(%struct.sta_info* %59)
  %61 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %62 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %69 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %68, i32 0, i32 0
  %70 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %71 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @list_add_tail(i32* %69, i32* %72)
  %74 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %75 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %74, i32 1
  store %struct.sta_info* %75, %struct.sta_info** %4, align 8
  br label %76

76:                                               ; preds = %58
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %54

79:                                               ; preds = %54
  %80 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %81 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %80, i32 0, i32 1
  %82 = call i32 @INIT_LIST_HEAD(i32* %81)
  %83 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %84 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %83, i32 0, i32 0
  %85 = call i32 @INIT_LIST_HEAD(i32* %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %79, %19
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @_init_queue(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @_init_stainfo(%struct.sta_info*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
