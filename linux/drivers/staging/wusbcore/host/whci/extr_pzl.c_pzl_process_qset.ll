; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_pzl.c_pzl_process_qset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_pzl.c_pzl_process_qset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { i32 }
%struct.whc_qset = type { i64, i64, i64, %struct.whc_qtd* }
%struct.whc_qtd = type { i32 }

@QTD_STS_ACTIVE = common dso_local global i32 0, align 4
@QTD_STS_HALTED = common dso_local global i32 0, align 4
@WHC_UPDATE_UPDATED = common dso_local global i32 0, align 4
@WHC_UPDATE_REMOVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.whc*, %struct.whc_qset*)* @pzl_process_qset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pzl_process_qset(%struct.whc* %0, %struct.whc_qset* %1) #0 {
  %3 = alloca %struct.whc*, align 8
  %4 = alloca %struct.whc_qset*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.whc_qtd*, align 8
  store %struct.whc* %0, %struct.whc** %3, align 8
  store %struct.whc_qset* %1, %struct.whc_qset** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %43, %2
  %9 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %10 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %8
  %14 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %15 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %14, i32 0, i32 3
  %16 = load %struct.whc_qtd*, %struct.whc_qtd** %15, align 8
  %17 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %18 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.whc_qtd, %struct.whc_qtd* %16, i64 %19
  store %struct.whc_qtd* %20, %struct.whc_qtd** %7, align 8
  %21 = load %struct.whc_qtd*, %struct.whc_qtd** %7, align 8
  %22 = getelementptr inbounds %struct.whc_qtd, %struct.whc_qtd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @QTD_STS_ACTIVE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %13
  br label %48

30:                                               ; preds = %13
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @QTD_STS_HALTED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.whc*, %struct.whc** %3, align 8
  %37 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %38 = load %struct.whc_qtd*, %struct.whc_qtd** %7, align 8
  %39 = call i32 @process_halted_qtd(%struct.whc* %36, %struct.whc_qset* %37, %struct.whc_qtd* %38)
  %40 = load i32, i32* @WHC_UPDATE_UPDATED, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %60

43:                                               ; preds = %30
  %44 = load %struct.whc*, %struct.whc** %3, align 8
  %45 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %46 = load %struct.whc_qtd*, %struct.whc_qtd** %7, align 8
  %47 = call i32 @process_inactive_qtd(%struct.whc* %44, %struct.whc_qset* %45, %struct.whc_qtd* %46)
  br label %8

48:                                               ; preds = %29, %8
  %49 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %50 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load %struct.whc*, %struct.whc** %3, align 8
  %55 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %56 = call i32 @qset_add_qtds(%struct.whc* %54, %struct.whc_qset* %55)
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %53, %48
  br label %60

60:                                               ; preds = %59, %35
  %61 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %62 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %67 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.whc*, %struct.whc** %3, align 8
  %72 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %73 = call i32 @pzl_qset_remove(%struct.whc* %71, %struct.whc_qset* %72)
  %74 = load i32, i32* @WHC_UPDATE_REMOVED, align 4
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %70, %65, %60
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @process_halted_qtd(%struct.whc*, %struct.whc_qset*, %struct.whc_qtd*) #1

declare dso_local i32 @process_inactive_qtd(%struct.whc*, %struct.whc_qset*, %struct.whc_qtd*) #1

declare dso_local i32 @qset_add_qtds(%struct.whc*, %struct.whc_qset*) #1

declare dso_local i32 @pzl_qset_remove(%struct.whc*, %struct.whc_qset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
