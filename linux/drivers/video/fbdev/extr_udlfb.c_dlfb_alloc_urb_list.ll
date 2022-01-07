; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_alloc_urb_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_alloc_urb_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlfb_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i32, i32 }
%struct.urb = type { i32, i32 }
%struct.urb_node = type { i32, %struct.urb*, %struct.dlfb_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@dlfb_urb_completion = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlfb_data*, i32, i64)* @dlfb_alloc_urb_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlfb_alloc_urb_list(%struct.dlfb_data* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.dlfb_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca %struct.urb_node*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.dlfb_data* %0, %struct.dlfb_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* %6, align 8
  %14 = mul i64 %12, %13
  store i64 %14, i64* %10, align 8
  %15 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %16 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  %18 = call i32 @spin_lock_init(i32* %17)
  br label %19

19:                                               ; preds = %86, %3
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %22 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %25 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %29 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = call i32 @sema_init(i32* %30, i32 0)
  %32 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %33 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %36 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %92, %19
  %39 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %40 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = mul i64 %42, %43
  %45 = load i64, i64* %10, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %131

47:                                               ; preds = %38
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.urb_node* @kzalloc(i32 24, i32 %48)
  store %struct.urb_node* %49, %struct.urb_node** %8, align 8
  %50 = load %struct.urb_node*, %struct.urb_node** %8, align 8
  %51 = icmp ne %struct.urb_node* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %131

53:                                               ; preds = %47
  %54 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %55 = load %struct.urb_node*, %struct.urb_node** %8, align 8
  %56 = getelementptr inbounds %struct.urb_node, %struct.urb_node* %55, i32 0, i32 2
  store %struct.dlfb_data* %54, %struct.dlfb_data** %56, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %57)
  store %struct.urb* %58, %struct.urb** %7, align 8
  %59 = load %struct.urb*, %struct.urb** %7, align 8
  %60 = icmp ne %struct.urb* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = load %struct.urb_node*, %struct.urb_node** %8, align 8
  %63 = call i32 @kfree(%struct.urb_node* %62)
  br label %131

64:                                               ; preds = %53
  %65 = load %struct.urb*, %struct.urb** %7, align 8
  %66 = load %struct.urb_node*, %struct.urb_node** %8, align 8
  %67 = getelementptr inbounds %struct.urb_node, %struct.urb_node* %66, i32 0, i32 1
  store %struct.urb* %65, %struct.urb** %67, align 8
  %68 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %69 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = load %struct.urb*, %struct.urb** %7, align 8
  %74 = getelementptr inbounds %struct.urb, %struct.urb* %73, i32 0, i32 1
  %75 = call i8* @usb_alloc_coherent(i32 %70, i64 %71, i32 %72, i32* %74)
  store i8* %75, i8** %9, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %92, label %78

78:                                               ; preds = %64
  %79 = load %struct.urb_node*, %struct.urb_node** %8, align 8
  %80 = call i32 @kfree(%struct.urb_node* %79)
  %81 = load %struct.urb*, %struct.urb** %7, align 8
  %82 = call i32 @usb_free_urb(%struct.urb* %81)
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* @PAGE_SIZE, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load i64, i64* %6, align 8
  %88 = udiv i64 %87, 2
  store i64 %88, i64* %6, align 8
  %89 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %90 = call i32 @dlfb_free_urb_list(%struct.dlfb_data* %89)
  br label %19

91:                                               ; preds = %78
  br label %131

92:                                               ; preds = %64
  %93 = load %struct.urb*, %struct.urb** %7, align 8
  %94 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %95 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %98 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @usb_sndbulkpipe(i32 %99, i32 1)
  %101 = load i8*, i8** %9, align 8
  %102 = load i64, i64* %6, align 8
  %103 = load i32, i32* @dlfb_urb_completion, align 4
  %104 = load %struct.urb_node*, %struct.urb_node** %8, align 8
  %105 = call i32 @usb_fill_bulk_urb(%struct.urb* %93, i32 %96, i32 %100, i8* %101, i64 %102, i32 %103, %struct.urb_node* %104)
  %106 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %107 = load %struct.urb*, %struct.urb** %7, align 8
  %108 = getelementptr inbounds %struct.urb, %struct.urb* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load %struct.urb_node*, %struct.urb_node** %8, align 8
  %112 = getelementptr inbounds %struct.urb_node, %struct.urb_node* %111, i32 0, i32 0
  %113 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %114 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 4
  %116 = call i32 @list_add_tail(i32* %112, i32* %115)
  %117 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %118 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  %120 = call i32 @up(i32* %119)
  %121 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %122 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %123, align 8
  %126 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %127 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %128, align 8
  br label %38

131:                                              ; preds = %91, %61, %52, %38
  %132 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %133 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  ret i32 %136
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local %struct.urb_node* @kzalloc(i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kfree(%struct.urb_node*) #1

declare dso_local i8* @usb_alloc_coherent(i32, i64, i32, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @dlfb_free_urb_list(%struct.dlfb_data*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i8*, i64, i32, %struct.urb_node*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
