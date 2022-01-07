; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_ep_aio_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_ep_aio_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i64, i64, %struct.kiocb_priv*, %struct.kiocb* }
%struct.kiocb_priv = type { i64, i32, %struct.kiocb_priv*, %struct.kiocb_priv*, %struct.ep_data*, i32* }
%struct.ep_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kiocb = type { i32 (%struct.kiocb*, i64, i64)*, %struct.kiocb_priv* }

@.str = private unnamed_addr constant [20 x i8] c"%s fault %d len %d\0A\00", align 1
@ep_user_copy_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @ep_aio_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_aio_complete(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.kiocb_priv*, align 8
  %7 = alloca %struct.ep_data*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %8 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %9 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %8, i32 0, i32 3
  %10 = load %struct.kiocb*, %struct.kiocb** %9, align 8
  store %struct.kiocb* %10, %struct.kiocb** %5, align 8
  %11 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %12 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %11, i32 0, i32 1
  %13 = load %struct.kiocb_priv*, %struct.kiocb_priv** %12, align 8
  store %struct.kiocb_priv* %13, %struct.kiocb_priv** %6, align 8
  %14 = load %struct.kiocb_priv*, %struct.kiocb_priv** %6, align 8
  %15 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %14, i32 0, i32 4
  %16 = load %struct.ep_data*, %struct.ep_data** %15, align 8
  store %struct.ep_data* %16, %struct.ep_data** %7, align 8
  %17 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %18 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.kiocb_priv*, %struct.kiocb_priv** %6, align 8
  %23 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %22, i32 0, i32 5
  store i32* null, i32** %23, align 8
  %24 = load %struct.kiocb_priv*, %struct.kiocb_priv** %6, align 8
  %25 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %24, i32 0, i32 4
  store %struct.ep_data* null, %struct.ep_data** %25, align 8
  %26 = load %struct.kiocb_priv*, %struct.kiocb_priv** %6, align 8
  %27 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %26, i32 0, i32 3
  %28 = load %struct.kiocb_priv*, %struct.kiocb_priv** %27, align 8
  %29 = icmp eq %struct.kiocb_priv* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %2
  %31 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %32 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %73

38:                                               ; preds = %30, %2
  %39 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %40 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %39, i32 0, i32 2
  %41 = load %struct.kiocb_priv*, %struct.kiocb_priv** %40, align 8
  %42 = call i32 @kfree(%struct.kiocb_priv* %41)
  %43 = load %struct.kiocb_priv*, %struct.kiocb_priv** %6, align 8
  %44 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %43, i32 0, i32 3
  %45 = load %struct.kiocb_priv*, %struct.kiocb_priv** %44, align 8
  %46 = call i32 @kfree(%struct.kiocb_priv* %45)
  %47 = load %struct.kiocb_priv*, %struct.kiocb_priv** %6, align 8
  %48 = call i32 @kfree(%struct.kiocb_priv* %47)
  %49 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %50 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %49, i32 0, i32 1
  store %struct.kiocb_priv* null, %struct.kiocb_priv** %50, align 8
  %51 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %52 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %51, i32 0, i32 0
  %53 = load i32 (%struct.kiocb*, i64, i64)*, i32 (%struct.kiocb*, i64, i64)** %52, align 8
  %54 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %55 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %56 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %38
  %60 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %61 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  br label %67

63:                                               ; preds = %38
  %64 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %65 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i64 [ %62, %59 ], [ %66, %63 ]
  %69 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %70 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 %53(%struct.kiocb* %54, i64 %68, i64 %71)
  br label %113

73:                                               ; preds = %30
  %74 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %75 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 0, %76
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %73
  %82 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %83 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %86 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %89 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %92 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @DBG(%struct.TYPE_2__* %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %87, i64 %90, i64 %93)
  br label %95

95:                                               ; preds = %81, %73
  %96 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %97 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %96, i32 0, i32 2
  %98 = load %struct.kiocb_priv*, %struct.kiocb_priv** %97, align 8
  %99 = load %struct.kiocb_priv*, %struct.kiocb_priv** %6, align 8
  %100 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %99, i32 0, i32 2
  store %struct.kiocb_priv* %98, %struct.kiocb_priv** %100, align 8
  %101 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %102 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.kiocb_priv*, %struct.kiocb_priv** %6, align 8
  %105 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.kiocb_priv*, %struct.kiocb_priv** %6, align 8
  %107 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %106, i32 0, i32 1
  %108 = load i32, i32* @ep_user_copy_worker, align 4
  %109 = call i32 @INIT_WORK(i32* %107, i32 %108)
  %110 = load %struct.kiocb_priv*, %struct.kiocb_priv** %6, align 8
  %111 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %110, i32 0, i32 1
  %112 = call i32 @schedule_work(i32* %111)
  br label %113

113:                                              ; preds = %95, %67
  %114 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %115 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %116 = call i32 @usb_ep_free_request(%struct.usb_ep* %114, %struct.usb_request* %115)
  %117 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %118 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = call i32 @spin_unlock(i32* %120)
  %122 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %123 = call i32 @put_ep(%struct.ep_data* %122)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(%struct.kiocb_priv*) #1

declare dso_local i32 @DBG(%struct.TYPE_2__*, i8*, i32, i64, i64) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @usb_ep_free_request(%struct.usb_ep*, %struct.usb_request*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @put_ep(%struct.ep_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
