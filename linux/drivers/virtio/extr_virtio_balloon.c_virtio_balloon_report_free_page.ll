; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_virtio_balloon_report_free_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_virtio_balloon_report_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_balloon = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Failed to send a start id, err = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to send a free page, err = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to send a stop id, err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_balloon*)* @virtio_balloon_report_free_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtio_balloon_report_free_page(%struct.virtio_balloon* %0) #0 {
  %2 = alloca %struct.virtio_balloon*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  store %struct.virtio_balloon* %0, %struct.virtio_balloon** %2, align 8
  %5 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %6 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %10 = call i32 @send_cmd_id_start(%struct.virtio_balloon* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %20 = call i32 @send_free_pages(%struct.virtio_balloon* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %30 = call i32 @send_cmd_id_stop(%struct.virtio_balloon* %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %28
  ret void
}

declare dso_local i32 @send_cmd_id_start(%struct.virtio_balloon*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @send_free_pages(%struct.virtio_balloon*) #1

declare dso_local i32 @send_cmd_id_stop(%struct.virtio_balloon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
