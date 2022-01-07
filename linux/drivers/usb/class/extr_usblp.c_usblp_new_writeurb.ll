; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_usblp.c_usblp_new_writeurb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_usblp.c_usblp_new_writeurb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.usblp = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@usblp_bulk_write = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* (%struct.usblp*, i32)* @usblp_new_writeurb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @usblp_new_writeurb(%struct.usblp* %0, i32 %1) #0 {
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.usblp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i8*, align 8
  store %struct.usblp* %0, %struct.usblp** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kmalloc(i32 %8, i32 %9)
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.urb* null, %struct.urb** %3, align 8
  br label %53

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %15)
  store %struct.urb* %16, %struct.urb** %6, align 8
  %17 = load %struct.urb*, %struct.urb** %6, align 8
  %18 = icmp eq %struct.urb* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @kfree(i8* %20)
  store %struct.urb* null, %struct.urb** %3, align 8
  br label %53

22:                                               ; preds = %14
  %23 = load %struct.urb*, %struct.urb** %6, align 8
  %24 = load %struct.usblp*, %struct.usblp** %4, align 8
  %25 = getelementptr inbounds %struct.usblp, %struct.usblp* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.usblp*, %struct.usblp** %4, align 8
  %28 = getelementptr inbounds %struct.usblp, %struct.usblp* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.usblp*, %struct.usblp** %4, align 8
  %31 = getelementptr inbounds %struct.usblp, %struct.usblp* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load %struct.usblp*, %struct.usblp** %4, align 8
  %34 = getelementptr inbounds %struct.usblp, %struct.usblp* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @usb_sndbulkpipe(i32 %29, i32 %40)
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @usblp_bulk_write, align 4
  %45 = load %struct.usblp*, %struct.usblp** %4, align 8
  %46 = call i32 @usb_fill_bulk_urb(%struct.urb* %23, i32 %26, i32 %41, i8* %42, i32 %43, i32 %44, %struct.usblp* %45)
  %47 = load i32, i32* @URB_FREE_BUFFER, align 4
  %48 = load %struct.urb*, %struct.urb** %6, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.urb*, %struct.urb** %6, align 8
  store %struct.urb* %52, %struct.urb** %3, align 8
  br label %53

53:                                               ; preds = %22, %19, %13
  %54 = load %struct.urb*, %struct.urb** %3, align 8
  ret %struct.urb* %54
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i8*, i32, i32, %struct.usblp*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
