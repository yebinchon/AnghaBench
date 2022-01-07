; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_ns_ana_grpid_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_ns_ana_grpid_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.nvmet_ns = type { i32, i32 }

@NVMET_MAX_ANAGRPS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nvmet_ana_sem = common dso_local global i32 0, align 4
@nvmet_ana_group_enabled = common dso_local global i32* null, align 8
@nvmet_ana_chgcnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @nvmet_ns_ana_grpid_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_ns_ana_grpid_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvmet_ns*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.config_item*, %struct.config_item** %5, align 8
  %13 = call %struct.nvmet_ns* @to_nvmet_ns(%struct.config_item* %12)
  store %struct.nvmet_ns* %13, %struct.nvmet_ns** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @kstrtou32(i8* %14, i32 0, i32* %10)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %4, align 4
  br label %59

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @NVMET_MAX_ANAGRPS, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %20
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %59

30:                                               ; preds = %23
  %31 = call i32 @down_write(i32* @nvmet_ana_sem)
  %32 = load %struct.nvmet_ns*, %struct.nvmet_ns** %8, align 8
  %33 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32*, i32** @nvmet_ana_group_enabled, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.nvmet_ns*, %struct.nvmet_ns** %8, align 8
  %43 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** @nvmet_ana_group_enabled, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @nvmet_ana_chgcnt, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @nvmet_ana_chgcnt, align 4
  %52 = call i32 @up_write(i32* @nvmet_ana_sem)
  %53 = load %struct.nvmet_ns*, %struct.nvmet_ns** %8, align 8
  %54 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @nvmet_send_ana_event(i32 %55, i32* null)
  %57 = load i64, i64* %7, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %30, %27, %18
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.nvmet_ns* @to_nvmet_ns(%struct.config_item*) #1

declare dso_local i32 @kstrtou32(i8*, i32, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @nvmet_send_ana_event(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
