; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_xen.c_xen_hvm_console_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_xen.c_xen_hvm_console_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xencons_info = type { i32, i32, i32*, i8* }

@ENODEV = common dso_local global i32 0, align 4
@HVC_COOKIE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HVM_PARAM_CONSOLE_EVTCHN = common dso_local global i32 0, align 4
@HVM_PARAM_CONSOLE_PFN = common dso_local global i32 0, align 4
@XEN_PAGE_SHIFT = common dso_local global i64 0, align 8
@XEN_PAGE_SIZE = common dso_local global i32 0, align 4
@xencons_lock = common dso_local global i32 0, align 4
@xenconsoles = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @xen_hvm_console_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_hvm_console_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xencons_info*, align 8
  store i8* null, i8** %3, align 8
  %6 = call i32 (...) @xen_hvm_domain()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %82

11:                                               ; preds = %0
  %12 = load i32, i32* @HVC_COOKIE, align 4
  %13 = call %struct.xencons_info* @vtermno_to_xencons(i32 %12)
  store %struct.xencons_info* %13, %struct.xencons_info** %5, align 8
  %14 = load %struct.xencons_info*, %struct.xencons_info** %5, align 8
  %15 = icmp ne %struct.xencons_info* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.xencons_info* @kzalloc(i32 24, i32 %17)
  store %struct.xencons_info* %18, %struct.xencons_info** %5, align 8
  %19 = load %struct.xencons_info*, %struct.xencons_info** %5, align 8
  %20 = icmp ne %struct.xencons_info* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %1, align 4
  br label %82

24:                                               ; preds = %16
  br label %32

25:                                               ; preds = %11
  %26 = load %struct.xencons_info*, %struct.xencons_info** %5, align 8
  %27 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %82

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %24
  %33 = load i32, i32* @HVM_PARAM_CONSOLE_EVTCHN, align 4
  %34 = call i32 @hvm_get_parameter(i32 %33, i8** %3)
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %3, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %32
  br label %77

41:                                               ; preds = %37
  %42 = load i8*, i8** %3, align 8
  %43 = load %struct.xencons_info*, %struct.xencons_info** %5, align 8
  %44 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  store i8* null, i8** %3, align 8
  %45 = load i32, i32* @HVM_PARAM_CONSOLE_PFN, align 4
  %46 = call i32 @hvm_get_parameter(i32 %45, i8** %3)
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %2, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load i8*, i8** %3, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %41
  br label %77

53:                                               ; preds = %49
  %54 = load i8*, i8** %3, align 8
  %55 = ptrtoint i8* %54 to i64
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @XEN_PAGE_SHIFT, align 8
  %58 = shl i64 %56, %57
  %59 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %60 = call i32* @xen_remap(i64 %58, i32 %59)
  %61 = load %struct.xencons_info*, %struct.xencons_info** %5, align 8
  %62 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %61, i32 0, i32 2
  store i32* %60, i32** %62, align 8
  %63 = load %struct.xencons_info*, %struct.xencons_info** %5, align 8
  %64 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  br label %77

68:                                               ; preds = %53
  %69 = load i32, i32* @HVC_COOKIE, align 4
  %70 = load %struct.xencons_info*, %struct.xencons_info** %5, align 8
  %71 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = call i32 @spin_lock(i32* @xencons_lock)
  %73 = load %struct.xencons_info*, %struct.xencons_info** %5, align 8
  %74 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %73, i32 0, i32 0
  %75 = call i32 @list_add_tail(i32* %74, i32* @xenconsoles)
  %76 = call i32 @spin_unlock(i32* @xencons_lock)
  store i32 0, i32* %1, align 4
  br label %82

77:                                               ; preds = %67, %52, %40
  %78 = load %struct.xencons_info*, %struct.xencons_info** %5, align 8
  %79 = call i32 @kfree(%struct.xencons_info* %78)
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %1, align 4
  br label %82

82:                                               ; preds = %77, %68, %30, %21, %8
  %83 = load i32, i32* %1, align 4
  ret i32 %83
}

declare dso_local i32 @xen_hvm_domain(...) #1

declare dso_local %struct.xencons_info* @vtermno_to_xencons(i32) #1

declare dso_local %struct.xencons_info* @kzalloc(i32, i32) #1

declare dso_local i32 @hvm_get_parameter(i32, i8**) #1

declare dso_local i32* @xen_remap(i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.xencons_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
