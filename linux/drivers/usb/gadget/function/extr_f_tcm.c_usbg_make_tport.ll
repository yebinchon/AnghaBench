; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_usbg_make_tport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_usbg_make_tport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_wwn = type { i32 }
%struct.target_fabric_configfs = type { i32 }
%struct.config_group = type { i32 }
%struct.usbg_tport = type { %struct.se_wwn, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.se_wwn* (%struct.target_fabric_configfs*, %struct.config_group*, i8*)* @usbg_make_tport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.se_wwn* @usbg_make_tport(%struct.target_fabric_configfs* %0, %struct.config_group* %1, i8* %2) #0 {
  %4 = alloca %struct.se_wwn*, align 8
  %5 = alloca %struct.target_fabric_configfs*, align 8
  %6 = alloca %struct.config_group*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.usbg_tport*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.target_fabric_configfs* %0, %struct.target_fabric_configfs** %5, align 8
  store %struct.config_group* %1, %struct.config_group** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = call i8* @usbg_check_wwn(i8* %11)
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.se_wwn* @ERR_PTR(i32 %17)
  store %struct.se_wwn* %18, %struct.se_wwn** %4, align 8
  br label %39

19:                                               ; preds = %3
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.usbg_tport* @kzalloc(i32 12, i32 %20)
  store %struct.usbg_tport* %21, %struct.usbg_tport** %8, align 8
  %22 = load %struct.usbg_tport*, %struct.usbg_tport** %8, align 8
  %23 = icmp ne %struct.usbg_tport* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.se_wwn* @ERR_PTR(i32 %26)
  store %struct.se_wwn* %27, %struct.se_wwn** %4, align 8
  br label %39

28:                                               ; preds = %19
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.usbg_tport*, %struct.usbg_tport** %8, align 8
  %31 = getelementptr inbounds %struct.usbg_tport, %struct.usbg_tport* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.usbg_tport*, %struct.usbg_tport** %8, align 8
  %33 = getelementptr inbounds %struct.usbg_tport, %struct.usbg_tport* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @snprintf(i32 %34, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load %struct.usbg_tport*, %struct.usbg_tport** %8, align 8
  %38 = getelementptr inbounds %struct.usbg_tport, %struct.usbg_tport* %37, i32 0, i32 0
  store %struct.se_wwn* %38, %struct.se_wwn** %4, align 8
  br label %39

39:                                               ; preds = %28, %24, %15
  %40 = load %struct.se_wwn*, %struct.se_wwn** %4, align 8
  ret %struct.se_wwn* %40
}

declare dso_local i8* @usbg_check_wwn(i8*) #1

declare dso_local %struct.se_wwn* @ERR_PTR(i32) #1

declare dso_local %struct.usbg_tport* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
