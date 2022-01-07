; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_client = type { i32 }
%struct.ntb_dev = type { %struct.ntb_transport_qp* }
%struct.ntb_transport_qp = type { i32, i32, i32, i32, %struct.ntb_transport_qp*, %struct.ntb_transport_qp*, i32, i32, i32, i32 }
%struct.ntb_transport_ctx = type { i32, i32, i32, i32, %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_client*, %struct.ntb_dev*)* @ntb_transport_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_transport_free(%struct.ntb_client* %0, %struct.ntb_dev* %1) #0 {
  %3 = alloca %struct.ntb_client*, align 8
  %4 = alloca %struct.ntb_dev*, align 8
  %5 = alloca %struct.ntb_transport_ctx*, align 8
  %6 = alloca %struct.ntb_transport_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ntb_client* %0, %struct.ntb_client** %3, align 8
  store %struct.ntb_dev* %1, %struct.ntb_dev** %4, align 8
  %9 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %10 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %9, i32 0, i32 0
  %11 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %10, align 8
  %12 = bitcast %struct.ntb_transport_qp* %11 to %struct.ntb_transport_ctx*
  store %struct.ntb_transport_ctx* %12, %struct.ntb_transport_ctx** %5, align 8
  %13 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %14 = bitcast %struct.ntb_transport_ctx* %13 to %struct.ntb_transport_qp*
  %15 = call i32 @ntb_transport_link_cleanup(%struct.ntb_transport_qp* %14)
  %16 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %16, i32 0, i32 9
  %18 = call i32 @cancel_work_sync(i32* %17)
  %19 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %19, i32 0, i32 8
  %21 = call i32 @cancel_delayed_work_sync(i32* %20)
  %22 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  store i32 %29, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %57, %2
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %33 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %30
  %37 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %37, i32 0, i32 5
  %39 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %39, i64 %41
  %43 = bitcast %struct.ntb_transport_ctx* %42 to %struct.ntb_transport_qp*
  store %struct.ntb_transport_qp* %43, %struct.ntb_transport_qp** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @BIT_ULL(i32 %45)
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %51 = call i32 @ntb_transport_free_queue(%struct.ntb_transport_qp* %50)
  br label %52

52:                                               ; preds = %49, %36
  %53 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %54 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @debugfs_remove_recursive(i32 %55)
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %30

60:                                               ; preds = %30
  %61 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %62 = call i32 @ntb_link_disable(%struct.ntb_dev* %61)
  %63 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %64 = call i32 @ntb_clear_ctx(%struct.ntb_dev* %63)
  %65 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %66 = bitcast %struct.ntb_transport_ctx* %65 to %struct.ntb_transport_qp*
  %67 = call i32 @ntb_bus_remove(%struct.ntb_transport_qp* %66)
  %68 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %69 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %75, %60
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %8, align 4
  %74 = icmp ne i32 %72, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %77 = bitcast %struct.ntb_transport_ctx* %76 to %struct.ntb_transport_qp*
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @ntb_free_mw(%struct.ntb_transport_qp* %77, i32 %78)
  %80 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %81 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %80, i32 0, i32 4
  %82 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %82, i64 %84
  %86 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @iounmap(i32 %87)
  br label %71

89:                                               ; preds = %71
  %90 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %91 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %90, i32 0, i32 5
  %92 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %91, align 8
  %93 = bitcast %struct.ntb_transport_ctx* %92 to %struct.ntb_transport_qp*
  %94 = call i32 @kfree(%struct.ntb_transport_qp* %93)
  %95 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %96 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %95, i32 0, i32 4
  %97 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %96, align 8
  %98 = bitcast %struct.ntb_transport_ctx* %97 to %struct.ntb_transport_qp*
  %99 = call i32 @kfree(%struct.ntb_transport_qp* %98)
  %100 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %101 = bitcast %struct.ntb_transport_ctx* %100 to %struct.ntb_transport_qp*
  %102 = call i32 @kfree(%struct.ntb_transport_qp* %101)
  ret void
}

declare dso_local i32 @ntb_transport_link_cleanup(%struct.ntb_transport_qp*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @ntb_transport_free_queue(%struct.ntb_transport_qp*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @ntb_link_disable(%struct.ntb_dev*) #1

declare dso_local i32 @ntb_clear_ctx(%struct.ntb_dev*) #1

declare dso_local i32 @ntb_bus_remove(%struct.ntb_transport_qp*) #1

declare dso_local i32 @ntb_free_mw(%struct.ntb_transport_qp*, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.ntb_transport_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
