; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-scpsys.c_scpsys_domain_is_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-scpsys.c_scpsys_domain_is_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scp_domain = type { %struct.TYPE_4__*, %struct.scp* }
%struct.TYPE_4__ = type { i32 }
%struct.scp = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scp_domain*)* @scpsys_domain_is_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scpsys_domain_is_on(%struct.scp_domain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scp_domain*, align 8
  %4 = alloca %struct.scp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scp_domain* %0, %struct.scp_domain** %3, align 8
  %7 = load %struct.scp_domain*, %struct.scp_domain** %3, align 8
  %8 = getelementptr inbounds %struct.scp_domain, %struct.scp_domain* %7, i32 0, i32 1
  %9 = load %struct.scp*, %struct.scp** %8, align 8
  store %struct.scp* %9, %struct.scp** %4, align 8
  %10 = load %struct.scp*, %struct.scp** %4, align 8
  %11 = getelementptr inbounds %struct.scp, %struct.scp* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.scp*, %struct.scp** %4, align 8
  %14 = getelementptr inbounds %struct.scp, %struct.scp* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %12, %16
  %18 = call i32 @readl(i64 %17)
  %19 = load %struct.scp_domain*, %struct.scp_domain** %3, align 8
  %20 = getelementptr inbounds %struct.scp_domain, %struct.scp_domain* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %18, %23
  store i32 %24, i32* %5, align 4
  %25 = load %struct.scp*, %struct.scp** %4, align 8
  %26 = getelementptr inbounds %struct.scp, %struct.scp* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.scp*, %struct.scp** %4, align 8
  %29 = getelementptr inbounds %struct.scp, %struct.scp* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %27, %31
  %33 = call i32 @readl(i64 %32)
  %34 = load %struct.scp_domain*, %struct.scp_domain** %3, align 8
  %35 = getelementptr inbounds %struct.scp_domain, %struct.scp_domain* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %33, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %1
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %56

46:                                               ; preds = %42, %1
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %56

53:                                               ; preds = %49, %46
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %52, %45
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
