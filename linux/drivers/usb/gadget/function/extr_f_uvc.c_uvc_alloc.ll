; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uvc.c_uvc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uvc.c_uvc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_function_instance = type { i32 }
%struct.uvc_device = type { %struct.usb_function, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header**, i32, i32 }
%struct.uvc_descriptor_header = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.f_uvc_opts = type { i32, i32, %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header**, i32, i32, %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UVC_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"uvc\00", align 1
@uvc_function_bind = common dso_local global i32 0, align 4
@uvc_unbind = common dso_local global i32 0, align 4
@uvc_function_get_alt = common dso_local global i32 0, align 4
@uvc_function_set_alt = common dso_local global i32 0, align 4
@uvc_function_disable = common dso_local global i32 0, align 4
@uvc_function_setup = common dso_local global i32 0, align 4
@uvc_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_function* (%struct.usb_function_instance*)* @uvc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_function* @uvc_alloc(%struct.usb_function_instance* %0) #0 {
  %2 = alloca %struct.usb_function*, align 8
  %3 = alloca %struct.usb_function_instance*, align 8
  %4 = alloca %struct.uvc_device*, align 8
  %5 = alloca %struct.f_uvc_opts*, align 8
  %6 = alloca %struct.uvc_descriptor_header**, align 8
  store %struct.usb_function_instance* %0, %struct.usb_function_instance** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.uvc_device* @kzalloc(i32 80, i32 %7)
  store %struct.uvc_device* %8, %struct.uvc_device** %4, align 8
  %9 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %10 = icmp eq %struct.uvc_device* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.usb_function* @ERR_PTR(i32 %13)
  store %struct.usb_function* %14, %struct.usb_function** %2, align 8
  br label %137

15:                                               ; preds = %1
  %16 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %17 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load i32, i32* @UVC_STATE_DISCONNECTED, align 4
  %21 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %22 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.usb_function_instance*, %struct.usb_function_instance** %3, align 8
  %24 = call %struct.f_uvc_opts* @fi_to_f_uvc_opts(%struct.usb_function_instance* %23)
  store %struct.f_uvc_opts* %24, %struct.f_uvc_opts** %5, align 8
  %25 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %5, align 8
  %26 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %5, align 8
  %29 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %28, i32 0, i32 9
  %30 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %29, align 8
  %31 = icmp ne %struct.uvc_descriptor_header** %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %15
  %33 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %5, align 8
  %34 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %33, i32 0, i32 9
  %35 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %34, align 8
  store %struct.uvc_descriptor_header** %35, %struct.uvc_descriptor_header*** %6, align 8
  %36 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %6, align 8
  %37 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %5, align 8
  %38 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %37, i32 0, i32 4
  store %struct.uvc_descriptor_header** %36, %struct.uvc_descriptor_header*** %38, align 8
  br label %39

39:                                               ; preds = %32, %15
  %40 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %5, align 8
  %41 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %40, i32 0, i32 8
  %42 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %41, align 8
  %43 = icmp ne %struct.uvc_descriptor_header** %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %5, align 8
  %46 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %45, i32 0, i32 8
  %47 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %46, align 8
  store %struct.uvc_descriptor_header** %47, %struct.uvc_descriptor_header*** %6, align 8
  %48 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %6, align 8
  %49 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %5, align 8
  %50 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %49, i32 0, i32 3
  store %struct.uvc_descriptor_header** %48, %struct.uvc_descriptor_header*** %50, align 8
  br label %51

51:                                               ; preds = %44, %39
  %52 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %5, align 8
  %53 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %52, i32 0, i32 7
  %54 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %53, align 8
  %55 = icmp ne %struct.uvc_descriptor_header** %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %5, align 8
  %58 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %57, i32 0, i32 7
  %59 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %58, align 8
  store %struct.uvc_descriptor_header** %59, %struct.uvc_descriptor_header*** %6, align 8
  %60 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %6, align 8
  %61 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %5, align 8
  %62 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %61, i32 0, i32 2
  store %struct.uvc_descriptor_header** %60, %struct.uvc_descriptor_header*** %62, align 8
  br label %63

63:                                               ; preds = %56, %51
  %64 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %5, align 8
  %65 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %68 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  store i32 %66, i32* %69, align 4
  %70 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %5, align 8
  %71 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %74 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 8
  %76 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %5, align 8
  %77 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %76, i32 0, i32 4
  %78 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %77, align 8
  %79 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %80 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store %struct.uvc_descriptor_header** %78, %struct.uvc_descriptor_header*** %81, align 8
  %82 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %5, align 8
  %83 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %82, i32 0, i32 3
  %84 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %83, align 8
  %85 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %86 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store %struct.uvc_descriptor_header** %84, %struct.uvc_descriptor_header*** %87, align 8
  %88 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %5, align 8
  %89 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %88, i32 0, i32 2
  %90 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %89, align 8
  %91 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %92 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store %struct.uvc_descriptor_header** %90, %struct.uvc_descriptor_header*** %93, align 8
  %94 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %5, align 8
  %95 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %5, align 8
  %99 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %102 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %102, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %103, align 8
  %104 = load i32, i32* @uvc_function_bind, align 4
  %105 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %106 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %106, i32 0, i32 8
  store i32 %104, i32* %107, align 4
  %108 = load i32, i32* @uvc_unbind, align 4
  %109 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %110 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %110, i32 0, i32 7
  store i32 %108, i32* %111, align 8
  %112 = load i32, i32* @uvc_function_get_alt, align 4
  %113 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %114 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %114, i32 0, i32 6
  store i32 %112, i32* %115, align 4
  %116 = load i32, i32* @uvc_function_set_alt, align 4
  %117 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %118 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %118, i32 0, i32 5
  store i32 %116, i32* %119, align 8
  %120 = load i32, i32* @uvc_function_disable, align 4
  %121 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %122 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %122, i32 0, i32 4
  store i32 %120, i32* %123, align 4
  %124 = load i32, i32* @uvc_function_setup, align 4
  %125 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %126 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %126, i32 0, i32 3
  store i32 %124, i32* %127, align 8
  %128 = load i32, i32* @uvc_free, align 4
  %129 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %130 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %130, i32 0, i32 2
  store i32 %128, i32* %131, align 4
  %132 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %133 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %133, i32 0, i32 1
  store i32 1, i32* %134, align 8
  %135 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %136 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %135, i32 0, i32 0
  store %struct.usb_function* %136, %struct.usb_function** %2, align 8
  br label %137

137:                                              ; preds = %63, %11
  %138 = load %struct.usb_function*, %struct.usb_function** %2, align 8
  ret %struct.usb_function* %138
}

declare dso_local %struct.uvc_device* @kzalloc(i32, i32) #1

declare dso_local %struct.usb_function* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.f_uvc_opts* @fi_to_f_uvc_opts(%struct.usb_function_instance*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
