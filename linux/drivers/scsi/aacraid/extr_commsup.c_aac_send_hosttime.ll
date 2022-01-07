; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_send_hosttime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_send_hosttime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32 }
%struct.timespec64 = type { i32 }
%struct.fib = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SendHostTime = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_send_hosttime(%struct.aac_dev* %0, %struct.timespec64* %1) #0 {
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca %struct.timespec64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fib*, align 8
  %7 = alloca i32*, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %3, align 8
  store %struct.timespec64* %1, %struct.timespec64** %4, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %11 = call %struct.fib* @aac_fib_alloc(%struct.aac_dev* %10)
  store %struct.fib* %11, %struct.fib** %6, align 8
  %12 = load %struct.fib*, %struct.fib** %6, align 8
  %13 = icmp ne %struct.fib* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.fib*, %struct.fib** %6, align 8
  %17 = call i32 @aac_fib_init(%struct.fib* %16)
  %18 = load %struct.fib*, %struct.fib** %6, align 8
  %19 = call i64 @fib_data(%struct.fib* %18)
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %7, align 8
  %21 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %22 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cpu_to_le32(i32 %23)
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @SendHostTime, align 4
  %27 = load %struct.fib*, %struct.fib** %6, align 8
  %28 = load i32, i32* @FsaNormal, align 4
  %29 = call i32 @aac_fib_send(i32 %26, %struct.fib* %27, i32 4, i32 %28, i32 1, i32 1, i32* null, i32* null)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %15
  %33 = load %struct.fib*, %struct.fib** %6, align 8
  %34 = call i32 @aac_fib_complete(%struct.fib* %33)
  br label %35

35:                                               ; preds = %32, %15
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @ERESTARTSYS, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.fib*, %struct.fib** %6, align 8
  %42 = call i32 @aac_fib_free(%struct.fib* %41)
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %43, %14
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.fib* @aac_fib_alloc(%struct.aac_dev*) #1

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @aac_fib_complete(%struct.fib*) #1

declare dso_local i32 @aac_fib_free(%struct.fib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
