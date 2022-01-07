; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_alloc_urb_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_alloc_urb_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufx_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32 }
%struct.urb = type { i32, i32 }
%struct.urb_node = type { i32, %struct.urb*, i32, %struct.ufx_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ufx_release_urb_work = common dso_local global i32 0, align 4
@ufx_urb_completion = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"allocated %d %d byte urbs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufx_data*, i32, i64)* @ufx_alloc_urb_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufx_alloc_urb_list(%struct.ufx_data* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ufx_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.urb*, align 8
  %9 = alloca %struct.urb_node*, align 8
  %10 = alloca i8*, align 8
  store %struct.ufx_data* %0, %struct.ufx_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ufx_data*, %struct.ufx_data** %4, align 8
  %12 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 5
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.ufx_data*, %struct.ufx_data** %4, align 8
  %17 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  %19 = load %struct.ufx_data*, %struct.ufx_data** %4, align 8
  %20 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  br label %23

23:                                               ; preds = %67, %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %94

27:                                               ; preds = %23
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.urb_node* @kzalloc(i32 32, i32 %28)
  store %struct.urb_node* %29, %struct.urb_node** %9, align 8
  %30 = load %struct.urb_node*, %struct.urb_node** %9, align 8
  %31 = icmp ne %struct.urb_node* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %94

33:                                               ; preds = %27
  %34 = load %struct.ufx_data*, %struct.ufx_data** %4, align 8
  %35 = load %struct.urb_node*, %struct.urb_node** %9, align 8
  %36 = getelementptr inbounds %struct.urb_node, %struct.urb_node* %35, i32 0, i32 3
  store %struct.ufx_data* %34, %struct.ufx_data** %36, align 8
  %37 = load %struct.urb_node*, %struct.urb_node** %9, align 8
  %38 = getelementptr inbounds %struct.urb_node, %struct.urb_node* %37, i32 0, i32 2
  %39 = load i32, i32* @ufx_release_urb_work, align 4
  %40 = call i32 @INIT_DELAYED_WORK(i32* %38, i32 %39)
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %41)
  store %struct.urb* %42, %struct.urb** %8, align 8
  %43 = load %struct.urb*, %struct.urb** %8, align 8
  %44 = icmp ne %struct.urb* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %33
  %46 = load %struct.urb_node*, %struct.urb_node** %9, align 8
  %47 = call i32 @kfree(%struct.urb_node* %46)
  br label %94

48:                                               ; preds = %33
  %49 = load %struct.urb*, %struct.urb** %8, align 8
  %50 = load %struct.urb_node*, %struct.urb_node** %9, align 8
  %51 = getelementptr inbounds %struct.urb_node, %struct.urb_node* %50, i32 0, i32 1
  store %struct.urb* %49, %struct.urb** %51, align 8
  %52 = load %struct.ufx_data*, %struct.ufx_data** %4, align 8
  %53 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = load %struct.urb*, %struct.urb** %8, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 1
  %59 = call i8* @usb_alloc_coherent(i32 %54, i64 %55, i32 %56, i32* %58)
  store i8* %59, i8** %10, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %48
  %63 = load %struct.urb_node*, %struct.urb_node** %9, align 8
  %64 = call i32 @kfree(%struct.urb_node* %63)
  %65 = load %struct.urb*, %struct.urb** %8, align 8
  %66 = call i32 @usb_free_urb(%struct.urb* %65)
  br label %94

67:                                               ; preds = %48
  %68 = load %struct.urb*, %struct.urb** %8, align 8
  %69 = load %struct.ufx_data*, %struct.ufx_data** %4, align 8
  %70 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ufx_data*, %struct.ufx_data** %4, align 8
  %73 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @usb_sndbulkpipe(i32 %74, i32 1)
  %76 = load i8*, i8** %10, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i32, i32* @ufx_urb_completion, align 4
  %79 = load %struct.urb_node*, %struct.urb_node** %9, align 8
  %80 = call i32 @usb_fill_bulk_urb(%struct.urb* %68, i32 %71, i32 %75, i8* %76, i64 %77, i32 %78, %struct.urb_node* %79)
  %81 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %82 = load %struct.urb*, %struct.urb** %8, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load %struct.urb_node*, %struct.urb_node** %9, align 8
  %87 = getelementptr inbounds %struct.urb_node, %struct.urb_node* %86, i32 0, i32 0
  %88 = load %struct.ufx_data*, %struct.ufx_data** %4, align 8
  %89 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  %91 = call i32 @list_add_tail(i32* %87, i32* %90)
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %23

94:                                               ; preds = %62, %45, %32, %23
  %95 = load %struct.ufx_data*, %struct.ufx_data** %4, align 8
  %96 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @sema_init(i32* %97, i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.ufx_data*, %struct.ufx_data** %4, align 8
  %102 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.ufx_data*, %struct.ufx_data** %4, align 8
  %106 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i64, i64* %6, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %110)
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.urb_node* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kfree(%struct.urb_node*) #1

declare dso_local i8* @usb_alloc_coherent(i32, i64, i32, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i8*, i64, i32, %struct.urb_node*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
