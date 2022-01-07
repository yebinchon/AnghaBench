; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_lun_opts_file_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_lun_opts_file_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.fsg_lun_opts = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fsg_opts = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @fsg_lun_opts_file_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsg_lun_opts_file_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fsg_lun_opts*, align 8
  %6 = alloca %struct.fsg_opts*, align 8
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.config_item*, %struct.config_item** %3, align 8
  %8 = call %struct.fsg_lun_opts* @to_fsg_lun_opts(%struct.config_item* %7)
  store %struct.fsg_lun_opts* %8, %struct.fsg_lun_opts** %5, align 8
  %9 = load %struct.fsg_lun_opts*, %struct.fsg_lun_opts** %5, align 8
  %10 = getelementptr inbounds %struct.fsg_lun_opts, %struct.fsg_lun_opts* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.fsg_opts* @to_fsg_opts(i32 %13)
  store %struct.fsg_opts* %14, %struct.fsg_opts** %6, align 8
  %15 = load %struct.fsg_lun_opts*, %struct.fsg_lun_opts** %5, align 8
  %16 = getelementptr inbounds %struct.fsg_lun_opts, %struct.fsg_lun_opts* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fsg_opts*, %struct.fsg_opts** %6, align 8
  %19 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @fsg_show_file(i32 %17, i32* %21, i8* %22)
  ret i32 %23
}

declare dso_local %struct.fsg_lun_opts* @to_fsg_lun_opts(%struct.config_item*) #1

declare dso_local %struct.fsg_opts* @to_fsg_opts(i32) #1

declare dso_local i32 @fsg_show_file(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
