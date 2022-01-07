; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_security.c_check_security_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_security.c_check_security_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm = type { i32, %struct.TYPE_2__, %struct.device }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@NVDIMM_SECURITY_FROZEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Incorrect security state: %#lx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@NDD_SECURITY_OVERWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Security operation in progress.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvdimm*)* @check_security_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_security_state(%struct.nvdimm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvdimm*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.nvdimm* %0, %struct.nvdimm** %3, align 8
  %5 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %6 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %5, i32 0, i32 2
  store %struct.device* %6, %struct.device** %4, align 8
  %7 = load i32, i32* @NVDIMM_SECURITY_FROZEN, align 4
  %8 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %9 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i64 @test_bit(i32 %7, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %16 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %34

22:                                               ; preds = %1
  %23 = load i32, i32* @NDD_SECURITY_OVERWRITE, align 4
  %24 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %25 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %24, i32 0, i32 0
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %28, %13
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
