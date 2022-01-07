; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_midi.c_f_midi_opts_id_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_midi.c_f_midi_opts_id_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.f_midi_opts = type { i32, i32, i8*, i32 }

@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @f_midi_opts_id_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_midi_opts_id_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.f_midi_opts*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.config_item*, %struct.config_item** %4, align 8
  %11 = call %struct.f_midi_opts* @to_f_midi_opts(%struct.config_item* %10)
  store %struct.f_midi_opts* %11, %struct.f_midi_opts** %7, align 8
  %12 = load %struct.f_midi_opts*, %struct.f_midi_opts** %7, align 8
  %13 = getelementptr inbounds %struct.f_midi_opts, %struct.f_midi_opts* %12, i32 0, i32 3
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.f_midi_opts*, %struct.f_midi_opts** %7, align 8
  %16 = getelementptr inbounds %struct.f_midi_opts, %struct.f_midi_opts* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  br label %50

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kstrndup(i8* %23, i64 %24, i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %50

32:                                               ; preds = %22
  %33 = load %struct.f_midi_opts*, %struct.f_midi_opts** %7, align 8
  %34 = getelementptr inbounds %struct.f_midi_opts, %struct.f_midi_opts* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.f_midi_opts*, %struct.f_midi_opts** %7, align 8
  %39 = getelementptr inbounds %struct.f_midi_opts, %struct.f_midi_opts* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @kfree(i8* %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i8*, i8** %9, align 8
  %44 = load %struct.f_midi_opts*, %struct.f_midi_opts** %7, align 8
  %45 = getelementptr inbounds %struct.f_midi_opts, %struct.f_midi_opts* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.f_midi_opts*, %struct.f_midi_opts** %7, align 8
  %47 = getelementptr inbounds %struct.f_midi_opts, %struct.f_midi_opts* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load i64, i64* %6, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %42, %29, %19
  %51 = load %struct.f_midi_opts*, %struct.f_midi_opts** %7, align 8
  %52 = getelementptr inbounds %struct.f_midi_opts, %struct.f_midi_opts* %51, i32 0, i32 3
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local %struct.f_midi_opts* @to_f_midi_opts(%struct.config_item*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @kstrndup(i8*, i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
