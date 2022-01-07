; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_xdp_schedule_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_xdp_schedule_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.tb_xdp_header = type { i32 }
%struct.xdomain_request_work = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@tb_xdp_handle_request = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb*, %struct.tb_xdp_header*, i64)* @tb_xdp_schedule_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_xdp_schedule_request(%struct.tb* %0, %struct.tb_xdp_header* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tb*, align 8
  %6 = alloca %struct.tb_xdp_header*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xdomain_request_work*, align 8
  store %struct.tb* %0, %struct.tb** %5, align 8
  store %struct.tb_xdp_header* %1, %struct.tb_xdp_header** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.xdomain_request_work* @kmalloc(i32 12, i32 %9)
  store %struct.xdomain_request_work* %10, %struct.xdomain_request_work** %8, align 8
  %11 = load %struct.xdomain_request_work*, %struct.xdomain_request_work** %8, align 8
  %12 = icmp ne %struct.xdomain_request_work* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

14:                                               ; preds = %3
  %15 = load %struct.xdomain_request_work*, %struct.xdomain_request_work** %8, align 8
  %16 = getelementptr inbounds %struct.xdomain_request_work, %struct.xdomain_request_work* %15, i32 0, i32 0
  %17 = load i32, i32* @tb_xdp_handle_request, align 4
  %18 = call i32 @INIT_WORK(i32* %16, i32 %17)
  %19 = load %struct.tb_xdp_header*, %struct.tb_xdp_header** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @kmemdup(%struct.tb_xdp_header* %19, i64 %20, i32 %21)
  %23 = load %struct.xdomain_request_work*, %struct.xdomain_request_work** %8, align 8
  %24 = getelementptr inbounds %struct.xdomain_request_work, %struct.xdomain_request_work* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.xdomain_request_work*, %struct.xdomain_request_work** %8, align 8
  %26 = getelementptr inbounds %struct.xdomain_request_work, %struct.xdomain_request_work* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %14
  %30 = load %struct.xdomain_request_work*, %struct.xdomain_request_work** %8, align 8
  %31 = call i32 @kfree(%struct.xdomain_request_work* %30)
  store i32 0, i32* %4, align 4
  br label %40

32:                                               ; preds = %14
  %33 = load %struct.tb*, %struct.tb** %5, align 8
  %34 = call i32 @tb_domain_get(%struct.tb* %33)
  %35 = load %struct.xdomain_request_work*, %struct.xdomain_request_work** %8, align 8
  %36 = getelementptr inbounds %struct.xdomain_request_work, %struct.xdomain_request_work* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.xdomain_request_work*, %struct.xdomain_request_work** %8, align 8
  %38 = getelementptr inbounds %struct.xdomain_request_work, %struct.xdomain_request_work* %37, i32 0, i32 0
  %39 = call i32 @schedule_work(i32* %38)
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %32, %29, %13
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.xdomain_request_work* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @kmemdup(%struct.tb_xdp_header*, i64, i32) #1

declare dso_local i32 @kfree(%struct.xdomain_request_work*) #1

declare dso_local i32 @tb_domain_get(%struct.tb*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
