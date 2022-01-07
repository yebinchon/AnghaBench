; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_emulate_evpd_b2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_emulate_evpd_b2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { %struct.se_device* }
%struct.se_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i8 (%struct.se_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, i8*)* @spc_emulate_evpd_b2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spc_emulate_evpd_b2(%struct.se_cmd* %0, i8* %1) #0 {
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.se_device*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %6, i32 0, i32 0
  %8 = load %struct.se_device*, %struct.se_device** %7, align 8
  store %struct.se_device* %8, %struct.se_device** %5, align 8
  %9 = load %struct.se_device*, %struct.se_device** %5, align 8
  %10 = getelementptr inbounds %struct.se_device, %struct.se_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i8 (%struct.se_device*)*, i8 (%struct.se_device*)** %12, align 8
  %14 = load %struct.se_device*, %struct.se_device** %5, align 8
  %15 = call zeroext i8 %13(%struct.se_device* %14)
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 %15, i8* %17, align 1
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = call i32 @put_unaligned_be16(i32 4, i8* %19)
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 4
  store i8 0, i8* %22, align 1
  %23 = load %struct.se_device*, %struct.se_device** %5, align 8
  %24 = getelementptr inbounds %struct.se_device, %struct.se_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 5
  store i8 -128, i8* %30, align 1
  br label %31

31:                                               ; preds = %28, %2
  %32 = load %struct.se_device*, %struct.se_device** %5, align 8
  %33 = getelementptr inbounds %struct.se_device, %struct.se_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 5
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %41, 96
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %39, align 1
  br label %44

44:                                               ; preds = %37, %31
  %45 = load %struct.se_device*, %struct.se_device** %5, align 8
  %46 = getelementptr inbounds %struct.se_device, %struct.se_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.se_device*, %struct.se_device** %5, align 8
  %52 = getelementptr inbounds %struct.se_device, %struct.se_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %50, %44
  %57 = load %struct.se_device*, %struct.se_device** %5, align 8
  %58 = getelementptr inbounds %struct.se_device, %struct.se_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 5
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = or i32 %66, 4
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %64, align 1
  br label %69

69:                                               ; preds = %62, %56, %50
  ret i32 0
}

declare dso_local i32 @put_unaligned_be16(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
