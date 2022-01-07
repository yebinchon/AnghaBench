; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_midi.c_f_midi_alloc_inst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_midi.c_f_midi_alloc_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function_instance = type { i32, i32 }
%struct.f_midi_opts = type { i32, i32, i32, i32, i32, %struct.usb_function_instance, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@f_midi_free_inst = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_IDX1 = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_STR1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@midi_func_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_function_instance* ()* @f_midi_alloc_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_function_instance* @f_midi_alloc_inst() #0 {
  %1 = alloca %struct.usb_function_instance*, align 8
  %2 = alloca %struct.f_midi_opts*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.f_midi_opts* @kzalloc(i32 40, i32 %3)
  store %struct.f_midi_opts* %4, %struct.f_midi_opts** %2, align 8
  %5 = load %struct.f_midi_opts*, %struct.f_midi_opts** %2, align 8
  %6 = icmp ne %struct.f_midi_opts* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.usb_function_instance* @ERR_PTR(i32 %9)
  store %struct.usb_function_instance* %10, %struct.usb_function_instance** %1, align 8
  br label %41

11:                                               ; preds = %0
  %12 = load %struct.f_midi_opts*, %struct.f_midi_opts** %2, align 8
  %13 = getelementptr inbounds %struct.f_midi_opts, %struct.f_midi_opts* %12, i32 0, i32 8
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load i32, i32* @f_midi_free_inst, align 4
  %16 = load %struct.f_midi_opts*, %struct.f_midi_opts** %2, align 8
  %17 = getelementptr inbounds %struct.f_midi_opts, %struct.f_midi_opts* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @SNDRV_DEFAULT_IDX1, align 4
  %20 = load %struct.f_midi_opts*, %struct.f_midi_opts** %2, align 8
  %21 = getelementptr inbounds %struct.f_midi_opts, %struct.f_midi_opts* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @SNDRV_DEFAULT_STR1, align 4
  %23 = load %struct.f_midi_opts*, %struct.f_midi_opts** %2, align 8
  %24 = getelementptr inbounds %struct.f_midi_opts, %struct.f_midi_opts* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.f_midi_opts*, %struct.f_midi_opts** %2, align 8
  %26 = getelementptr inbounds %struct.f_midi_opts, %struct.f_midi_opts* %25, i32 0, i32 0
  store i32 512, i32* %26, align 4
  %27 = load %struct.f_midi_opts*, %struct.f_midi_opts** %2, align 8
  %28 = getelementptr inbounds %struct.f_midi_opts, %struct.f_midi_opts* %27, i32 0, i32 1
  store i32 32, i32* %28, align 4
  %29 = load %struct.f_midi_opts*, %struct.f_midi_opts** %2, align 8
  %30 = getelementptr inbounds %struct.f_midi_opts, %struct.f_midi_opts* %29, i32 0, i32 2
  store i32 1, i32* %30, align 4
  %31 = load %struct.f_midi_opts*, %struct.f_midi_opts** %2, align 8
  %32 = getelementptr inbounds %struct.f_midi_opts, %struct.f_midi_opts* %31, i32 0, i32 3
  store i32 1, i32* %32, align 4
  %33 = load %struct.f_midi_opts*, %struct.f_midi_opts** %2, align 8
  %34 = getelementptr inbounds %struct.f_midi_opts, %struct.f_midi_opts* %33, i32 0, i32 4
  store i32 1, i32* %34, align 4
  %35 = load %struct.f_midi_opts*, %struct.f_midi_opts** %2, align 8
  %36 = getelementptr inbounds %struct.f_midi_opts, %struct.f_midi_opts* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %36, i32 0, i32 0
  %38 = call i32 @config_group_init_type_name(i32* %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* @midi_func_type)
  %39 = load %struct.f_midi_opts*, %struct.f_midi_opts** %2, align 8
  %40 = getelementptr inbounds %struct.f_midi_opts, %struct.f_midi_opts* %39, i32 0, i32 5
  store %struct.usb_function_instance* %40, %struct.usb_function_instance** %1, align 8
  br label %41

41:                                               ; preds = %11, %7
  %42 = load %struct.usb_function_instance*, %struct.usb_function_instance** %1, align 8
  ret %struct.usb_function_instance* %42
}

declare dso_local %struct.f_midi_opts* @kzalloc(i32, i32) #1

declare dso_local %struct.usb_function_instance* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @config_group_init_type_name(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
