; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_free_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_free_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_3__ = type { i32, %struct.async*, %struct.async*, %struct.async* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.async*)* @free_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_async(%struct.async* %0) #0 {
  %2 = alloca %struct.async*, align 8
  %3 = alloca i32, align 4
  store %struct.async* %0, %struct.async** %2, align 8
  %4 = load %struct.async*, %struct.async** %2, align 8
  %5 = getelementptr inbounds %struct.async, %struct.async* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @put_pid(i32 %6)
  %8 = load %struct.async*, %struct.async** %2, align 8
  %9 = getelementptr inbounds %struct.async, %struct.async* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.async*, %struct.async** %2, align 8
  %14 = getelementptr inbounds %struct.async, %struct.async* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @put_cred(i64 %15)
  br label %17

17:                                               ; preds = %12, %1
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %49, %17
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.async*, %struct.async** %2, align 8
  %21 = getelementptr inbounds %struct.async, %struct.async* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %18
  %27 = load %struct.async*, %struct.async** %2, align 8
  %28 = getelementptr inbounds %struct.async, %struct.async* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load %struct.async*, %struct.async** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.async, %struct.async* %31, i64 %33
  %35 = call i64 @sg_page(%struct.async* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %26
  %38 = load %struct.async*, %struct.async** %2, align 8
  %39 = getelementptr inbounds %struct.async, %struct.async* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load %struct.async*, %struct.async** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.async, %struct.async* %42, i64 %44
  %46 = call %struct.async* @sg_virt(%struct.async* %45)
  %47 = call i32 @kfree(%struct.async* %46)
  br label %48

48:                                               ; preds = %37, %26
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %18

52:                                               ; preds = %18
  %53 = load %struct.async*, %struct.async** %2, align 8
  %54 = getelementptr inbounds %struct.async, %struct.async* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load %struct.async*, %struct.async** %56, align 8
  %58 = call i32 @kfree(%struct.async* %57)
  %59 = load %struct.async*, %struct.async** %2, align 8
  %60 = getelementptr inbounds %struct.async, %struct.async* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = icmp eq %struct.TYPE_4__* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %52
  %64 = load %struct.async*, %struct.async** %2, align 8
  %65 = getelementptr inbounds %struct.async, %struct.async* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load %struct.async*, %struct.async** %67, align 8
  %69 = call i32 @kfree(%struct.async* %68)
  br label %79

70:                                               ; preds = %52
  %71 = load %struct.async*, %struct.async** %2, align 8
  %72 = getelementptr inbounds %struct.async, %struct.async* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load %struct.async*, %struct.async** %2, align 8
  %75 = getelementptr inbounds %struct.async, %struct.async* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = call i32 @dec_usb_memory_use_count(%struct.TYPE_4__* %73, i32* %77)
  br label %79

79:                                               ; preds = %70, %63
  %80 = load %struct.async*, %struct.async** %2, align 8
  %81 = getelementptr inbounds %struct.async, %struct.async* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load %struct.async*, %struct.async** %83, align 8
  %85 = call i32 @kfree(%struct.async* %84)
  %86 = load %struct.async*, %struct.async** %2, align 8
  %87 = getelementptr inbounds %struct.async, %struct.async* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = call i32 @usb_free_urb(%struct.TYPE_3__* %88)
  %90 = load %struct.async*, %struct.async** %2, align 8
  %91 = getelementptr inbounds %struct.async, %struct.async* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @usbfs_decrease_memory_usage(i32 %92)
  %94 = load %struct.async*, %struct.async** %2, align 8
  %95 = call i32 @kfree(%struct.async* %94)
  ret void
}

declare dso_local i32 @put_pid(i32) #1

declare dso_local i32 @put_cred(i64) #1

declare dso_local i64 @sg_page(%struct.async*) #1

declare dso_local i32 @kfree(%struct.async*) #1

declare dso_local %struct.async* @sg_virt(%struct.async*) #1

declare dso_local i32 @dec_usb_memory_use_count(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_3__*) #1

declare dso_local i32 @usbfs_decrease_memory_usage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
