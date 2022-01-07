; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_set_bus_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_set_bus_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32, i32, i32, i32, i32, i64 }
%struct.sym_nvram = type { i64 }

@SMODE_SE = common dso_local global i32 0, align 4
@FE_ULTRA2 = common dso_local global i32 0, align 4
@FE_ULTRA3 = common dso_local global i32 0, align 4
@SMODE = common dso_local global i32 0, align 4
@FE_DIFF = common dso_local global i32 0, align 4
@SYM_SETUP_SCSI_DIFF = common dso_local global i32 0, align 4
@SMODE_HVD = common dso_local global i8* null, align 8
@SYM_SYMBIOS_NVRAM = common dso_local global i64 0, align 8
@nc_gpreg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*, %struct.sym_nvram*)* @sym_set_bus_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_set_bus_mode(%struct.sym_hcb* %0, %struct.sym_nvram* %1) #0 {
  %3 = alloca %struct.sym_hcb*, align 8
  %4 = alloca %struct.sym_nvram*, align 8
  store %struct.sym_hcb* %0, %struct.sym_hcb** %3, align 8
  store %struct.sym_nvram* %1, %struct.sym_nvram** %4, align 8
  %5 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %6 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %101

10:                                               ; preds = %2
  %11 = load i32, i32* @SMODE_SE, align 4
  %12 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %13 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %15 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FE_ULTRA2, align 4
  %18 = load i32, i32* @FE_ULTRA3, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %10
  %23 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %24 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SMODE, align 4
  %27 = and i32 %25, %26
  %28 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %29 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %88

30:                                               ; preds = %10
  %31 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %32 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @FE_DIFF, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %87

37:                                               ; preds = %30
  %38 = load i32, i32* @SYM_SETUP_SCSI_DIFF, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %77

40:                                               ; preds = %37
  %41 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %42 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %47 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i8*, i8** @SMODE_HVD, align 8
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %55 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %51, %45
  br label %76

57:                                               ; preds = %40
  %58 = load %struct.sym_nvram*, %struct.sym_nvram** %4, align 8
  %59 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SYM_SYMBIOS_NVRAM, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %65 = load i32, i32* @nc_gpreg, align 4
  %66 = call i32 @INB(%struct.sym_hcb* %64, i32 %65)
  %67 = and i32 %66, 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %63
  %70 = load i8*, i8** @SMODE_HVD, align 8
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %73 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %69, %63
  br label %75

75:                                               ; preds = %74, %57
  br label %76

76:                                               ; preds = %75, %56
  br label %86

77:                                               ; preds = %37
  %78 = load i32, i32* @SYM_SETUP_SCSI_DIFF, align 4
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i8*, i8** @SMODE_HVD, align 8
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %84 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %80, %77
  br label %86

86:                                               ; preds = %85, %76
  br label %87

87:                                               ; preds = %86, %30
  br label %88

88:                                               ; preds = %87, %22
  %89 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %90 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = load i8*, i8** @SMODE_HVD, align 8
  %95 = icmp eq i8* %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %98 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, 32
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %9, %96, %88
  ret void
}

declare dso_local i32 @INB(%struct.sym_hcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
