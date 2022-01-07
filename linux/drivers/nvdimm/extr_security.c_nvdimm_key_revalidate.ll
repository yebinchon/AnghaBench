; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_security.c_nvdimm_key_revalidate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_security.c_nvdimm_key_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.nvdimm*, i8*, i8*, i32)* }
%struct.key = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NVDIMM_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvdimm*)* @nvdimm_key_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvdimm_key_revalidate(%struct.nvdimm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvdimm*, align 8
  %4 = alloca %struct.key*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.nvdimm* %0, %struct.nvdimm** %3, align 8
  %7 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %8 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (%struct.nvdimm*, i8*, i8*, i32)*, i32 (%struct.nvdimm*, i8*, i8*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.nvdimm*, i8*, i8*, i32)* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %46

17:                                               ; preds = %1
  %18 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %19 = call i8* @nvdimm_get_key_payload(%struct.nvdimm* %18, %struct.key** %4)
  store i8* %19, i8** %6, align 8
  %20 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %21 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.nvdimm*, i8*, i8*, i32)*, i32 (%struct.nvdimm*, i8*, i8*, i32)** %24, align 8
  %26 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* @NVDIMM_USER, align 4
  %30 = call i32 %25(%struct.nvdimm* %26, i8* %27, i8* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %17
  %34 = load %struct.key*, %struct.key** %4, align 8
  %35 = call i32 @nvdimm_put_key(%struct.key* %34)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %46

37:                                               ; preds = %17
  %38 = load %struct.key*, %struct.key** %4, align 8
  %39 = call i32 @nvdimm_put_key(%struct.key* %38)
  %40 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %41 = load i32, i32* @NVDIMM_USER, align 4
  %42 = call i32 @nvdimm_security_flags(%struct.nvdimm* %40, i32 %41)
  %43 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %44 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %37, %33, %14
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i8* @nvdimm_get_key_payload(%struct.nvdimm*, %struct.key**) #1

declare dso_local i32 @nvdimm_put_key(%struct.key*) #1

declare dso_local i32 @nvdimm_security_flags(%struct.nvdimm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
