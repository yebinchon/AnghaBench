; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_get_next_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_get_next_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i32, %struct.fsg_buffhd* }
%struct.fsg_buffhd = type { i32 }

@US_BULK_CB_WRAP_LEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BUF_STATE_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_common*)* @get_next_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_next_command(%struct.fsg_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsg_common*, align 8
  %4 = alloca %struct.fsg_buffhd*, align 8
  %5 = alloca i32, align 4
  store %struct.fsg_common* %0, %struct.fsg_common** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %7 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %6, i32 0, i32 1
  %8 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %7, align 8
  store %struct.fsg_buffhd* %8, %struct.fsg_buffhd** %4, align 8
  %9 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %10 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %11 = call i32 @sleep_thread(%struct.fsg_common* %9, i32 1, %struct.fsg_buffhd* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %55

16:                                               ; preds = %1
  %17 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %18 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %19 = load i32, i32* @US_BULK_CB_WRAP_LEN, align 4
  %20 = call i32 @set_bulk_out_req_length(%struct.fsg_common* %17, %struct.fsg_buffhd* %18, i32 %19)
  %21 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %22 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %23 = call i32 @start_out_transfer(%struct.fsg_common* %21, %struct.fsg_buffhd* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %55

28:                                               ; preds = %16
  %29 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %30 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %31 = call i32 @sleep_thread(%struct.fsg_common* %29, i32 1, %struct.fsg_buffhd* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %55

36:                                               ; preds = %28
  %37 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %38 = call i64 @fsg_is_set(%struct.fsg_common* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %42 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %45 = call i32 @received_cbw(i32 %43, %struct.fsg_buffhd* %44)
  br label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  br label %49

49:                                               ; preds = %46, %40
  %50 = phi i32 [ %45, %40 ], [ %48, %46 ]
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @BUF_STATE_EMPTY, align 4
  %52 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %53 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %49, %34, %25, %14
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @sleep_thread(%struct.fsg_common*, i32, %struct.fsg_buffhd*) #1

declare dso_local i32 @set_bulk_out_req_length(%struct.fsg_common*, %struct.fsg_buffhd*, i32) #1

declare dso_local i32 @start_out_transfer(%struct.fsg_common*, %struct.fsg_buffhd*) #1

declare dso_local i64 @fsg_is_set(%struct.fsg_common*) #1

declare dso_local i32 @received_cbw(i32, %struct.fsg_buffhd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
