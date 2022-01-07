; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_set_mode_densblk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_set_mode_densblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { i64, i64, i32, i32 }
%struct.st_modedef = type { i64, i64 }

@MT_ST_DENSITY_SHIFT = common dso_local global i64 0, align 8
@SET_DENS_AND_BLK = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Can't set default block size to %d bytes and density %x.\0A\00", align 1
@modes_defined = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_tape*, %struct.st_modedef*)* @set_mode_densblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_mode_densblk(%struct.scsi_tape* %0, %struct.st_modedef* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_tape*, align 8
  %5 = alloca %struct.st_modedef*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.scsi_tape* %0, %struct.scsi_tape** %4, align 8
  store %struct.st_modedef* %1, %struct.st_modedef** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %2
  %13 = load %struct.st_modedef*, %struct.st_modedef** %5, align 8
  %14 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp uge i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.st_modedef*, %struct.st_modedef** %5, align 8
  %19 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.st_modedef*, %struct.st_modedef** %5, align 8
  %27 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  store i32 1, i32* %6, align 4
  br label %33

29:                                               ; preds = %17, %12, %2
  %30 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %31 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i64, i64* @MT_ST_DENSITY_SHIFT, align 8
  %35 = load i64, i64* %7, align 8
  %36 = shl i64 %35, %34
  store i64 %36, i64* %7, align 8
  %37 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %38 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %33
  %42 = load %struct.st_modedef*, %struct.st_modedef** %5, align 8
  %43 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp uge i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load %struct.st_modedef*, %struct.st_modedef** %5, align 8
  %48 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %51 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.st_modedef*, %struct.st_modedef** %5, align 8
  %56 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %7, align 8
  store i32 1, i32* %6, align 4
  br label %66

60:                                               ; preds = %46, %41, %33
  %61 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %62 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %7, align 8
  br label %66

66:                                               ; preds = %60, %54
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %66
  %70 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %71 = load i32, i32* @SET_DENS_AND_BLK, align 4
  %72 = load i64, i64* %7, align 8
  %73 = call i64 @st_int_ioctl(%struct.scsi_tape* %70, i32 %71, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %69
  %76 = load i32, i32* @KERN_WARNING, align 4
  %77 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %78 = load %struct.st_modedef*, %struct.st_modedef** %5, align 8
  %79 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.st_modedef*, %struct.st_modedef** %5, align 8
  %82 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @st_printk(i32 %76, %struct.scsi_tape* %77, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %80, i64 %83)
  %85 = load i64, i64* @modes_defined, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %75
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %92

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90, %69, %66
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %87
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @st_int_ioctl(%struct.scsi_tape*, i32, i64) #1

declare dso_local i32 @st_printk(i32, %struct.scsi_tape*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
