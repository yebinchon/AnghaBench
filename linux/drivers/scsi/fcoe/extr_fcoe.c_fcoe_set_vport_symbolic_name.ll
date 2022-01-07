; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe.c_fcoe_set_vport_symbolic_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe.c_fcoe_set_vport_symbolic_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_vport = type { i8*, %struct.fc_lport* }
%struct.fc_lport = type { i64, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32*, i32*, i32)* }
%struct.fc_frame = type opaque
%struct.fc_frame.0 = type { i32 }
%struct.TYPE_4__ = type { i8* }

@FC_SYMBOLIC_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s v%s over %s : %s\00", align 1
@FCOE_NAME = common dso_local global i8* null, align 8
@FCOE_VERSION = common dso_local global i8* null, align 8
@LPORT_ST_READY = common dso_local global i64 0, align 8
@FC_FID_DIR_SERV = common dso_local global i32 0, align 4
@FC_NS_RSPN_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_vport*)* @fcoe_set_vport_symbolic_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_set_vport_symbolic_name(%struct.fc_vport* %0) #0 {
  %2 = alloca %struct.fc_vport*, align 8
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame.0*, align 8
  %5 = alloca i64, align 8
  store %struct.fc_vport* %0, %struct.fc_vport** %2, align 8
  %6 = load %struct.fc_vport*, %struct.fc_vport** %2, align 8
  %7 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %6, i32 0, i32 1
  %8 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  store %struct.fc_lport* %8, %struct.fc_lport** %3, align 8
  %9 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %10 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @fc_host_symbolic_name(i32 %11)
  %13 = load i32, i32* @FC_SYMBOLIC_NAME_SIZE, align 4
  %14 = load i8*, i8** @FCOE_NAME, align 8
  %15 = load i8*, i8** @FCOE_VERSION, align 8
  %16 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %17 = call %struct.TYPE_4__* @fcoe_netdev(%struct.fc_lport* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.fc_vport*, %struct.fc_vport** %2, align 8
  %21 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @snprintf(i32 %12, i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15, i8* %19, i8* %22)
  %24 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %25 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LPORT_ST_READY, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %59

30:                                               ; preds = %1
  %31 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %32 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @fc_host_symbolic_name(i32 %33)
  %35 = call i64 @strnlen(i32 %34, i32 255)
  store i64 %35, i64* %5, align 8
  %36 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %37 = load i64, i64* %5, align 8
  %38 = add i64 8, %37
  %39 = trunc i64 %38 to i32
  %40 = call %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport* %36, i32 %39)
  store %struct.fc_frame.0* %40, %struct.fc_frame.0** %4, align 8
  %41 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %42 = icmp ne %struct.fc_frame.0* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %30
  br label %59

44:                                               ; preds = %30
  %45 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %46 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32*, i32*, i32)*, i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32*, i32*, i32)** %47, align 8
  %49 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %50 = load i32, i32* @FC_FID_DIR_SERV, align 4
  %51 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %52 = bitcast %struct.fc_frame.0* %51 to %struct.fc_frame*
  %53 = load i32, i32* @FC_NS_RSPN_ID, align 4
  %54 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %55 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 3, %56
  %58 = call i32 %48(%struct.fc_lport* %49, i32 %50, %struct.fc_frame* %52, i32 %53, i32* null, i32* null, i32 %57)
  br label %59

59:                                               ; preds = %44, %43, %29
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @fc_host_symbolic_name(i32) #1

declare dso_local %struct.TYPE_4__* @fcoe_netdev(%struct.fc_lport*) #1

declare dso_local i64 @strnlen(i32, i32) #1

declare dso_local %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
