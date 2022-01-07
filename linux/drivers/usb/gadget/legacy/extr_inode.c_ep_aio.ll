; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_ep_aio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_ep_aio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.kiocb = type { %struct.kiocb_priv* }
%struct.kiocb_priv = type { %struct.kiocb_priv*, %struct.usb_request*, i32, i64, %struct.ep_data*, %struct.kiocb* }
%struct.usb_request = type { i8*, i64, %struct.kiocb*, i32 }
%struct.ep_data = type { %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32 }

@ep_aio_cancel = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ep_aio_complete = common dso_local global i32 0, align 4
@EIOCBQUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.kiocb_priv*, %struct.ep_data*, i8*, i64)* @ep_aio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_aio(%struct.kiocb* %0, %struct.kiocb_priv* %1, %struct.ep_data* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kiocb*, align 8
  %8 = alloca %struct.kiocb_priv*, align 8
  %9 = alloca %struct.ep_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.usb_request*, align 8
  %13 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %7, align 8
  store %struct.kiocb_priv* %1, %struct.kiocb_priv** %8, align 8
  store %struct.ep_data* %2, %struct.ep_data** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.kiocb_priv*, %struct.kiocb_priv** %8, align 8
  %15 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %16 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %15, i32 0, i32 0
  store %struct.kiocb_priv* %14, %struct.kiocb_priv** %16, align 8
  %17 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %18 = load %struct.kiocb_priv*, %struct.kiocb_priv** %8, align 8
  %19 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %18, i32 0, i32 5
  store %struct.kiocb* %17, %struct.kiocb** %19, align 8
  %20 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %21 = load i32, i32* @ep_aio_cancel, align 4
  %22 = call i32 @kiocb_set_cancel_fn(%struct.kiocb* %20, i32 %21)
  %23 = load %struct.ep_data*, %struct.ep_data** %9, align 8
  %24 = call i32 @get_ep(%struct.ep_data* %23)
  %25 = load %struct.ep_data*, %struct.ep_data** %9, align 8
  %26 = load %struct.kiocb_priv*, %struct.kiocb_priv** %8, align 8
  %27 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %26, i32 0, i32 4
  store %struct.ep_data* %25, %struct.ep_data** %27, align 8
  %28 = load %struct.kiocb_priv*, %struct.kiocb_priv** %8, align 8
  %29 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.kiocb_priv*, %struct.kiocb_priv** %8, align 8
  %34 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ep_data*, %struct.ep_data** %9, align 8
  %36 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_irq(i32* %38)
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %13, align 4
  %42 = load %struct.ep_data*, %struct.ep_data** %9, align 8
  %43 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %5
  br label %106

50:                                               ; preds = %5
  %51 = load %struct.ep_data*, %struct.ep_data** %9, align 8
  %52 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  %55 = call %struct.usb_request* @usb_ep_alloc_request(i32* %53, i32 %54)
  store %struct.usb_request* %55, %struct.usb_request** %12, align 8
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %13, align 4
  %58 = load %struct.usb_request*, %struct.usb_request** %12, align 8
  %59 = icmp ne %struct.usb_request* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %106

65:                                               ; preds = %50
  %66 = load %struct.usb_request*, %struct.usb_request** %12, align 8
  %67 = load %struct.kiocb_priv*, %struct.kiocb_priv** %8, align 8
  %68 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %67, i32 0, i32 1
  store %struct.usb_request* %66, %struct.usb_request** %68, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load %struct.usb_request*, %struct.usb_request** %12, align 8
  %71 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.usb_request*, %struct.usb_request** %12, align 8
  %74 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* @ep_aio_complete, align 4
  %76 = load %struct.usb_request*, %struct.usb_request** %12, align 8
  %77 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %79 = load %struct.usb_request*, %struct.usb_request** %12, align 8
  %80 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %79, i32 0, i32 2
  store %struct.kiocb* %78, %struct.kiocb** %80, align 8
  %81 = load %struct.ep_data*, %struct.ep_data** %9, align 8
  %82 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.usb_request*, %struct.usb_request** %12, align 8
  %85 = load i32, i32* @GFP_ATOMIC, align 4
  %86 = call i32 @usb_ep_queue(i32* %83, %struct.usb_request* %84, i32 %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 0, %87
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %65
  %93 = load %struct.ep_data*, %struct.ep_data** %9, align 8
  %94 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.usb_request*, %struct.usb_request** %12, align 8
  %97 = call i32 @usb_ep_free_request(i32* %95, %struct.usb_request* %96)
  br label %106

98:                                               ; preds = %65
  %99 = load %struct.ep_data*, %struct.ep_data** %9, align 8
  %100 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %99, i32 0, i32 0
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = call i32 @spin_unlock_irq(i32* %102)
  %104 = load i32, i32* @EIOCBQUEUED, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %6, align 4
  br label %121

106:                                              ; preds = %92, %64, %49
  %107 = load %struct.ep_data*, %struct.ep_data** %9, align 8
  %108 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = call i32 @spin_unlock_irq(i32* %110)
  %112 = load %struct.kiocb_priv*, %struct.kiocb_priv** %8, align 8
  %113 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %112, i32 0, i32 0
  %114 = load %struct.kiocb_priv*, %struct.kiocb_priv** %113, align 8
  %115 = call i32 @kfree(%struct.kiocb_priv* %114)
  %116 = load %struct.kiocb_priv*, %struct.kiocb_priv** %8, align 8
  %117 = call i32 @kfree(%struct.kiocb_priv* %116)
  %118 = load %struct.ep_data*, %struct.ep_data** %9, align 8
  %119 = call i32 @put_ep(%struct.ep_data* %118)
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %106, %98
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32 @kiocb_set_cancel_fn(%struct.kiocb*, i32) #1

declare dso_local i32 @get_ep(%struct.ep_data*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.usb_request* @usb_ep_alloc_request(i32*, i32) #1

declare dso_local i32 @usb_ep_queue(i32*, %struct.usb_request*, i32) #1

declare dso_local i32 @usb_ep_free_request(i32*, %struct.usb_request*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.kiocb_priv*) #1

declare dso_local i32 @put_ep(%struct.ep_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
