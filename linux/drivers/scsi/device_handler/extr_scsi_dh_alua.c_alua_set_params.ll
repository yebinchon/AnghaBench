; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.alua_dh_data* }
%struct.alua_dh_data = type { i32 }
%struct.alua_port_group = type { i32, i32 }

@SCSI_DH_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ALUA_OPTIMIZE_STPG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i8*)* @alua_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alua_set_params(%struct.scsi_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.alua_dh_data*, align 8
  %7 = alloca %struct.alua_port_group*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 0
  %15 = load %struct.alua_dh_data*, %struct.alua_dh_data** %14, align 8
  store %struct.alua_dh_data* %15, %struct.alua_dh_data** %6, align 8
  store %struct.alua_port_group* null, %struct.alua_port_group** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %10, align 8
  %17 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %9)
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %83

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %33, %27
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %10, align 8
  %31 = load i8, i8* %29, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %28

34:                                               ; preds = %28
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @sscanf(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = icmp ugt i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %38, %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %83

44:                                               ; preds = %38
  %45 = call i32 (...) @rcu_read_lock()
  %46 = load %struct.alua_dh_data*, %struct.alua_dh_data** %6, align 8
  %47 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.alua_port_group* @rcu_dereference(i32 %48)
  store %struct.alua_port_group* %49, %struct.alua_port_group** %7, align 8
  %50 = load %struct.alua_port_group*, %struct.alua_port_group** %7, align 8
  %51 = icmp ne %struct.alua_port_group* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %44
  %53 = call i32 (...) @rcu_read_unlock()
  %54 = load i32, i32* @ENXIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %83

56:                                               ; preds = %44
  %57 = load %struct.alua_port_group*, %struct.alua_port_group** %7, align 8
  %58 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %57, i32 0, i32 0
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32, i32* @ALUA_OPTIMIZE_STPG, align 4
  %65 = load %struct.alua_port_group*, %struct.alua_port_group** %7, align 8
  %66 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %76

69:                                               ; preds = %56
  %70 = load i32, i32* @ALUA_OPTIMIZE_STPG, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.alua_port_group*, %struct.alua_port_group** %7, align 8
  %73 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %69, %63
  %77 = load %struct.alua_port_group*, %struct.alua_port_group** %7, align 8
  %78 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %77, i32 0, i32 0
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = call i32 (...) @rcu_read_unlock()
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %76, %52, %41, %24
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.alua_port_group* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
