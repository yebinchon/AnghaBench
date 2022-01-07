; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_rediscover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_rediscover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32, %struct.expander_device }
%struct.expander_device = type { i32, %struct.ex_phy* }
%struct.ex_phy = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"ex %016llx phy%02d originated BROADCAST(CHANGE)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, i32)* @sas_rediscover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_rediscover(%struct.domain_device* %0, i32 %1) #0 {
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.expander_device*, align 8
  %6 = alloca %struct.ex_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ex_phy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %12 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %11, i32 0, i32 1
  store %struct.expander_device* %12, %struct.expander_device** %5, align 8
  %13 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %14 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %13, i32 0, i32 1
  %15 = load %struct.ex_phy*, %struct.ex_phy** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %15, i64 %17
  store %struct.ex_phy* %18, %struct.ex_phy** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %9, align 4
  %19 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %20 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @SAS_ADDR(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %22, i32 %23)
  %25 = load %struct.ex_phy*, %struct.ex_phy** %6, align 8
  %26 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @SAS_ADDR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %60, %30
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %34 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %31
  %38 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %39 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %38, i32 0, i32 1
  %40 = load %struct.ex_phy*, %struct.ex_phy** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %40, i64 %42
  store %struct.ex_phy* %43, %struct.ex_phy** %10, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %60

48:                                               ; preds = %37
  %49 = load %struct.ex_phy*, %struct.ex_phy** %10, align 8
  %50 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @SAS_ADDR(i32 %51)
  %53 = load %struct.ex_phy*, %struct.ex_phy** %6, align 8
  %54 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @SAS_ADDR(i32 %55)
  %57 = icmp eq i64 %52, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  br label %63

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %47
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %31

63:                                               ; preds = %58, %31
  %64 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @sas_rediscover_dev(%struct.domain_device* %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %7, align 4
  br label %73

69:                                               ; preds = %2
  %70 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @sas_discover_new(%struct.domain_device* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @pr_debug(i8*, i64, i32) #1

declare dso_local i64 @SAS_ADDR(i32) #1

declare dso_local i32 @sas_rediscover_dev(%struct.domain_device*, i32, i32, i32) #1

declare dso_local i32 @sas_discover_new(%struct.domain_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
