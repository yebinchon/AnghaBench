; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_karma.c_rio_karma_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_karma.c_rio_karma_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64* }
%struct.us_data = type { i64 }
%struct.karma_data = type { i32 }

@READ_10 = common dso_local global i64 0, align 8
@RIO_ENTER_STORAGE = common dso_local global i32 0, align 4
@START_STOP = common dso_local global i64 0, align 8
@RIO_LEAVE_STORAGE = common dso_local global i32 0, align 4
@RIO_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.us_data*)* @rio_karma_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_karma_transport(%struct.scsi_cmnd* %0, %struct.us_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.karma_data*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.us_data* %1, %struct.us_data** %5, align 8
  %8 = load %struct.us_data*, %struct.us_data** %5, align 8
  %9 = getelementptr inbounds %struct.us_data, %struct.us_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.karma_data*
  store %struct.karma_data* %11, %struct.karma_data** %7, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @READ_10, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load %struct.karma_data*, %struct.karma_data** %7, align 8
  %21 = getelementptr inbounds %struct.karma_data, %struct.karma_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @RIO_ENTER_STORAGE, align 4
  %26 = load %struct.us_data*, %struct.us_data** %5, align 8
  %27 = call i32 @rio_karma_send_command(i32 %25, %struct.us_data* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %65

32:                                               ; preds = %24
  %33 = load %struct.karma_data*, %struct.karma_data** %7, align 8
  %34 = getelementptr inbounds %struct.karma_data, %struct.karma_data* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %36 = load %struct.us_data*, %struct.us_data** %5, align 8
  %37 = call i32 @usb_stor_Bulk_transport(%struct.scsi_cmnd* %35, %struct.us_data* %36)
  store i32 %37, i32* %3, align 4
  br label %65

38:                                               ; preds = %19, %2
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @START_STOP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %38
  %47 = load i32, i32* @RIO_LEAVE_STORAGE, align 4
  %48 = load %struct.us_data*, %struct.us_data** %5, align 8
  %49 = call i32 @rio_karma_send_command(i32 %47, %struct.us_data* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %65

54:                                               ; preds = %46
  %55 = load %struct.karma_data*, %struct.karma_data** %7, align 8
  %56 = getelementptr inbounds %struct.karma_data, %struct.karma_data* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  %57 = load i32, i32* @RIO_RESET, align 4
  %58 = load %struct.us_data*, %struct.us_data** %5, align 8
  %59 = call i32 @rio_karma_send_command(i32 %57, %struct.us_data* %58)
  store i32 %59, i32* %3, align 4
  br label %65

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %63 = load %struct.us_data*, %struct.us_data** %5, align 8
  %64 = call i32 @usb_stor_Bulk_transport(%struct.scsi_cmnd* %62, %struct.us_data* %63)
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %54, %52, %32, %30
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @rio_karma_send_command(i32, %struct.us_data*) #1

declare dso_local i32 @usb_stor_Bulk_transport(%struct.scsi_cmnd*, %struct.us_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
