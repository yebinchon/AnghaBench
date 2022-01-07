; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_fdomain_isa.c_fdomain_isa_param_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_fdomain_isa.c_fdomain_isa_param_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.Scsi_Host = type { i32 }

@irq = common dso_local global i32* null, align 8
@io = common dso_local global i64* null, align 8
@FDOMAIN_REGION_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"fdomain_isa\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"base 0x%x already in use\00", align 1
@irqs = common dso_local global i32* null, align 8
@REG_CFG1 = common dso_local global i64 0, align 8
@CFG1_IRQ_MASK = common dso_local global i32 0, align 4
@scsi_id = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"controller not found at base 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @fdomain_isa_param_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdomain_isa_param_match(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** @irq, align 8
  %9 = load i32, i32* %5, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i64*, i64** @io, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %91

20:                                               ; preds = %2
  %21 = load i64*, i64** @io, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @FDOMAIN_REGION_SIZE, align 4
  %27 = call i32 @request_region(i64 %25, i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %20
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load i64*, i64** @io, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  store i32 0, i32* %3, align 4
  br label %91

37:                                               ; preds = %20
  %38 = load i32, i32* %7, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = load i32*, i32** @irqs, align 8
  %42 = load i64*, i64** @io, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @REG_CFG1, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @inb(i64 %48)
  %50 = load i32, i32* @CFG1_IRQ_MASK, align 4
  %51 = and i32 %49, %50
  %52 = ashr i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %41, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %40, %37
  %57 = load i64*, i64** @io, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32*, i32** @scsi_id, align 8
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = call %struct.Scsi_Host* @fdomain_create(i64 %61, i32 %62, i32 %67, %struct.device* %68)
  store %struct.Scsi_Host* %69, %struct.Scsi_Host** %6, align 8
  %70 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %71 = icmp ne %struct.Scsi_Host* %70, null
  br i1 %71, label %87, label %72

72:                                               ; preds = %56
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = load i64*, i64** @io, align 8
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %78)
  %80 = load i64*, i64** @io, align 8
  %81 = load i32, i32* %5, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @FDOMAIN_REGION_SIZE, align 4
  %86 = call i32 @release_region(i64 %84, i32 %85)
  store i32 0, i32* %3, align 4
  br label %91

87:                                               ; preds = %56
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %90 = call i32 @dev_set_drvdata(%struct.device* %88, %struct.Scsi_Host* %89)
  store i32 1, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %72, %29, %19
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @request_region(i64, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local %struct.Scsi_Host* @fdomain_create(i64, i32, i32, %struct.device*) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
