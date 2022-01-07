; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_lun_opts_file_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_lun_opts_file_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.fsg_lun_opts = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fsg_opts = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @fsg_lun_opts_file_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsg_lun_opts_file_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fsg_lun_opts*, align 8
  %8 = alloca %struct.fsg_opts*, align 8
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.config_item*, %struct.config_item** %4, align 8
  %10 = call %struct.fsg_lun_opts* @to_fsg_lun_opts(%struct.config_item* %9)
  store %struct.fsg_lun_opts* %10, %struct.fsg_lun_opts** %7, align 8
  %11 = load %struct.fsg_lun_opts*, %struct.fsg_lun_opts** %7, align 8
  %12 = getelementptr inbounds %struct.fsg_lun_opts, %struct.fsg_lun_opts* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.fsg_opts* @to_fsg_opts(i32 %15)
  store %struct.fsg_opts* %16, %struct.fsg_opts** %8, align 8
  %17 = load %struct.fsg_lun_opts*, %struct.fsg_lun_opts** %7, align 8
  %18 = getelementptr inbounds %struct.fsg_lun_opts, %struct.fsg_lun_opts* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fsg_opts*, %struct.fsg_opts** %8, align 8
  %21 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @fsg_store_file(i32 %19, i32* %23, i8* %24, i64 %25)
  ret i32 %26
}

declare dso_local %struct.fsg_lun_opts* @to_fsg_lun_opts(%struct.config_item*) #1

declare dso_local %struct.fsg_opts* @to_fsg_opts(i32) #1

declare dso_local i32 @fsg_store_file(i32, i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
