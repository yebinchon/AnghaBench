; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32, %struct.nvm_dev*, %struct.TYPE_2__*, i32, i32, %struct.request_queue* }
%struct.nvm_dev = type { %struct.nvme_ns*, i32*, i32, %struct.request_queue*, %struct.nvm_geo }
%struct.nvm_geo = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.request_queue = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DISK_NAME_LEN = common dso_local global i32 0, align 4
@nvme_nvm_dev_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_nvm_register(%struct.nvme_ns* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_ns*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.request_queue*, align 8
  %9 = alloca %struct.nvm_dev*, align 8
  %10 = alloca %struct.nvm_geo*, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %12 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %11, i32 0, i32 5
  %13 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  store %struct.request_queue* %13, %struct.request_queue** %8, align 8
  %14 = call i32 (...) @_nvme_nvm_check_size()
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.nvm_dev* @nvm_alloc_dev(i32 %15)
  store %struct.nvm_dev* %16, %struct.nvm_dev** %9, align 8
  %17 = load %struct.nvm_dev*, %struct.nvm_dev** %9, align 8
  %18 = icmp ne %struct.nvm_dev* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %67

22:                                               ; preds = %3
  %23 = load %struct.nvm_dev*, %struct.nvm_dev** %9, align 8
  %24 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %23, i32 0, i32 4
  store %struct.nvm_geo* %24, %struct.nvm_geo** %10, align 8
  %25 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %26 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 1, %27
  %29 = load %struct.nvm_geo*, %struct.nvm_geo** %10, align 8
  %30 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %32 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nvm_geo*, %struct.nvm_geo** %10, align 8
  %35 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %37 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.nvm_geo*, %struct.nvm_geo** %10, align 8
  %40 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %42 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nvm_geo*, %struct.nvm_geo** %10, align 8
  %47 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %49 = load %struct.nvm_dev*, %struct.nvm_dev** %9, align 8
  %50 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %49, i32 0, i32 3
  store %struct.request_queue* %48, %struct.request_queue** %50, align 8
  %51 = load %struct.nvm_dev*, %struct.nvm_dev** %9, align 8
  %52 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* @DISK_NAME_LEN, align 4
  %56 = call i32 @memcpy(i32 %53, i8* %54, i32 %55)
  %57 = load %struct.nvm_dev*, %struct.nvm_dev** %9, align 8
  %58 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %57, i32 0, i32 1
  store i32* @nvme_nvm_dev_ops, i32** %58, align 8
  %59 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %60 = load %struct.nvm_dev*, %struct.nvm_dev** %9, align 8
  %61 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %60, i32 0, i32 0
  store %struct.nvme_ns* %59, %struct.nvme_ns** %61, align 8
  %62 = load %struct.nvm_dev*, %struct.nvm_dev** %9, align 8
  %63 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %64 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %63, i32 0, i32 1
  store %struct.nvm_dev* %62, %struct.nvm_dev** %64, align 8
  %65 = load %struct.nvm_dev*, %struct.nvm_dev** %9, align 8
  %66 = call i32 @nvm_register(%struct.nvm_dev* %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %22, %19
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @_nvme_nvm_check_size(...) #1

declare dso_local %struct.nvm_dev* @nvm_alloc_dev(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @nvm_register(%struct.nvm_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
