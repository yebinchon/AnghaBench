; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_device_portmap_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_device_portmap_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { %struct.cxgbi_ports_map }
%struct.cxgbi_ports_map = type { i32, %struct.cxgbi_sock** }
%struct.cxgbi_sock = type { i32 }

@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"csk 0x%p, cdev 0x%p, offload down.\0A\00", align 1
@CTPF_OFFLOAD_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbi_device_portmap_cleanup(%struct.cxgbi_device* %0) #0 {
  %2 = alloca %struct.cxgbi_device*, align 8
  %3 = alloca %struct.cxgbi_ports_map*, align 8
  %4 = alloca %struct.cxgbi_sock*, align 8
  %5 = alloca i32, align 4
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %2, align 8
  %6 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %7 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %6, i32 0, i32 0
  store %struct.cxgbi_ports_map* %7, %struct.cxgbi_ports_map** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %56, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %3, align 8
  %11 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %8
  %15 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %3, align 8
  %16 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %15, i32 0, i32 1
  %17 = load %struct.cxgbi_sock**, %struct.cxgbi_sock*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cxgbi_sock*, %struct.cxgbi_sock** %17, i64 %19
  %21 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %20, align 8
  %22 = icmp ne %struct.cxgbi_sock* %21, null
  br i1 %22, label %23, label %55

23:                                               ; preds = %14
  %24 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %3, align 8
  %25 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %24, i32 0, i32 1
  %26 = load %struct.cxgbi_sock**, %struct.cxgbi_sock*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.cxgbi_sock*, %struct.cxgbi_sock** %26, i64 %28
  %30 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %29, align 8
  store %struct.cxgbi_sock* %30, %struct.cxgbi_sock** %4, align 8
  %31 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %3, align 8
  %32 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %31, i32 0, i32 1
  %33 = load %struct.cxgbi_sock**, %struct.cxgbi_sock*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.cxgbi_sock*, %struct.cxgbi_sock** %33, i64 %35
  store %struct.cxgbi_sock* null, %struct.cxgbi_sock** %36, align 8
  %37 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %38 = shl i32 1, %37
  %39 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %40 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %41 = call i32 @log_debug(i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %39, %struct.cxgbi_device* %40)
  %42 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %43 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %42, i32 0, i32 0
  %44 = call i32 @spin_lock_bh(i32* %43)
  %45 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %46 = load i32, i32* @CTPF_OFFLOAD_DOWN, align 4
  %47 = call i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock* %45, i32 %46)
  %48 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %49 = call i32 @cxgbi_sock_closed(%struct.cxgbi_sock* %48)
  %50 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %51 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_bh(i32* %51)
  %53 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %54 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %53)
  br label %55

55:                                               ; preds = %23, %14
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %8

59:                                               ; preds = %8
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, %struct.cxgbi_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_closed(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
