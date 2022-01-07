; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_configuration = type { i32 }
%struct.usb_function = type { i32 }
%struct.fsg_dev = type { i32, %struct.fsg_common* }
%struct.fsg_common = type { %struct.fsg_dev*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"unbind\0A\00", align 1
@FSG_STATE_CONFIG_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_configuration*, %struct.usb_function*)* @fsg_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsg_unbind(%struct.usb_configuration* %0, %struct.usb_function* %1) #0 {
  %3 = alloca %struct.usb_configuration*, align 8
  %4 = alloca %struct.usb_function*, align 8
  %5 = alloca %struct.fsg_dev*, align 8
  %6 = alloca %struct.fsg_common*, align 8
  store %struct.usb_configuration* %0, %struct.usb_configuration** %3, align 8
  store %struct.usb_function* %1, %struct.usb_function** %4, align 8
  %7 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %8 = call %struct.fsg_dev* @fsg_from_func(%struct.usb_function* %7)
  store %struct.fsg_dev* %8, %struct.fsg_dev** %5, align 8
  %9 = load %struct.fsg_dev*, %struct.fsg_dev** %5, align 8
  %10 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %9, i32 0, i32 1
  %11 = load %struct.fsg_common*, %struct.fsg_common** %10, align 8
  store %struct.fsg_common* %11, %struct.fsg_common** %6, align 8
  %12 = load %struct.fsg_dev*, %struct.fsg_dev** %5, align 8
  %13 = call i32 @DBG(%struct.fsg_dev* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.fsg_dev*, %struct.fsg_dev** %5, align 8
  %15 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %14, i32 0, i32 1
  %16 = load %struct.fsg_common*, %struct.fsg_common** %15, align 8
  %17 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %16, i32 0, i32 0
  %18 = load %struct.fsg_dev*, %struct.fsg_dev** %17, align 8
  %19 = load %struct.fsg_dev*, %struct.fsg_dev** %5, align 8
  %20 = icmp eq %struct.fsg_dev* %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load %struct.fsg_dev*, %struct.fsg_dev** %5, align 8
  %23 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %22, i32 0, i32 1
  %24 = load %struct.fsg_common*, %struct.fsg_common** %23, align 8
  %25 = load i32, i32* @FSG_STATE_CONFIG_CHANGE, align 4
  %26 = call i32 @__raise_exception(%struct.fsg_common* %24, i32 %25, i32* null)
  %27 = load %struct.fsg_common*, %struct.fsg_common** %6, align 8
  %28 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.fsg_common*, %struct.fsg_common** %6, align 8
  %31 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %30, i32 0, i32 0
  %32 = load %struct.fsg_dev*, %struct.fsg_dev** %31, align 8
  %33 = load %struct.fsg_dev*, %struct.fsg_dev** %5, align 8
  %34 = icmp ne %struct.fsg_dev* %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @wait_event(i32 %29, i32 %35)
  br label %37

37:                                               ; preds = %21, %2
  %38 = load %struct.fsg_dev*, %struct.fsg_dev** %5, align 8
  %39 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %38, i32 0, i32 0
  %40 = call i32 @usb_free_all_descriptors(i32* %39)
  ret void
}

declare dso_local %struct.fsg_dev* @fsg_from_func(%struct.usb_function*) #1

declare dso_local i32 @DBG(%struct.fsg_dev*, i8*) #1

declare dso_local i32 @__raise_exception(%struct.fsg_common*, i32, i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @usb_free_all_descriptors(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
