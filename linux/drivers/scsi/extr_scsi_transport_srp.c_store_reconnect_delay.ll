; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_srp.c_store_reconnect_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_srp.c_store_reconnect_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.srp_rport = type { i32, i64, i32, i32, i32 }

@SRP_RPORT_RUNNING = common dso_local global i64 0, align 8
@system_long_wq = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_reconnect_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_reconnect_delay(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.srp_rport*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.srp_rport* @transport_class_to_srp_rport(%struct.device* %12)
  store %struct.srp_rport* %13, %struct.srp_rport** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @srp_parse_tmo(i32* %11, i8* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %67

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.srp_rport*, %struct.srp_rport** %9, align 8
  %22 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.srp_rport*, %struct.srp_rport** %9, align 8
  %25 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @srp_tmo_valid(i32 %20, i32 %23, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %67

31:                                               ; preds = %19
  %32 = load %struct.srp_rport*, %struct.srp_rport** %9, align 8
  %33 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load i32, i32* %11, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load %struct.srp_rport*, %struct.srp_rport** %9, align 8
  %41 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SRP_RPORT_RUNNING, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i32, i32* @system_long_wq, align 4
  %47 = load %struct.srp_rport*, %struct.srp_rport** %9, align 8
  %48 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %47, i32 0, i32 2
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @HZ, align 4
  %51 = mul nsw i32 %49, %50
  %52 = call i32 @queue_delayed_work(i32 %46, i32* %48, i32 %51)
  br label %61

53:                                               ; preds = %39, %36, %31
  %54 = load i32, i32* %11, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.srp_rport*, %struct.srp_rport** %9, align 8
  %58 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %57, i32 0, i32 2
  %59 = call i32 @cancel_delayed_work(i32* %58)
  br label %60

60:                                               ; preds = %56, %53
  br label %61

61:                                               ; preds = %60, %45
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.srp_rport*, %struct.srp_rport** %9, align 8
  %64 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i64, i64* %8, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %61, %30, %18
  %68 = load i32, i32* %10, align 4
  ret i32 %68
}

declare dso_local %struct.srp_rport* @transport_class_to_srp_rport(%struct.device*) #1

declare dso_local i32 @srp_parse_tmo(i32*, i8*) #1

declare dso_local i32 @srp_tmo_valid(i32, i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
