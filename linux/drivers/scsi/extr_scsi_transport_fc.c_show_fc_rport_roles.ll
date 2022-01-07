; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_show_fc_rport_roles.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_show_fc_rport_roles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fc_rport = type { i32, i64 }

@FC_WELLKNOWN_PORTID_MASK = common dso_local global i32 0, align 4
@FC_WELLKNOWN_ROLE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Fabric Port\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Fabric Controller\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Directory Server\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Time Server\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Management Server\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Unknown Fabric Entity\0A\00", align 1
@FC_PORT_ROLE_UNKNOWN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_fc_rport_roles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_fc_rport_roles(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fc_rport*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.fc_rport* @transport_class_to_rport(%struct.device* %9)
  store %struct.fc_rport* %10, %struct.fc_rport** %8, align 8
  %11 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %12 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %47

15:                                               ; preds = %3
  %16 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %17 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FC_WELLKNOWN_PORTID_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @FC_WELLKNOWN_PORTID_MASK, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %15
  %24 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %25 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FC_WELLKNOWN_ROLE_MASK, align 4
  %28 = and i32 %26, %27
  switch i32 %28, label %44 [
    i32 130, label %29
    i32 131, label %32
    i32 132, label %35
    i32 128, label %38
    i32 129, label %41
  ]

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @snprintf(i8* %30, i32 30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %31, i32* %4, align 4
  br label %62

32:                                               ; preds = %23
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @snprintf(i8* %33, i32 30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %34, i32* %4, align 4
  br label %62

35:                                               ; preds = %23
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @snprintf(i8* %36, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 %37, i32* %4, align 4
  br label %62

38:                                               ; preds = %23
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @snprintf(i8* %39, i32 30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %40, i32* %4, align 4
  br label %62

41:                                               ; preds = %23
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @snprintf(i8* %42, i32 30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 %43, i32* %4, align 4
  br label %62

44:                                               ; preds = %23
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @snprintf(i8* %45, i32 30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i32 %46, i32* %4, align 4
  br label %62

47:                                               ; preds = %15, %3
  %48 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %49 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FC_PORT_ROLE_UNKNOWN, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @snprintf(i8* %54, i32 20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 %55, i32* %4, align 4
  br label %62

56:                                               ; preds = %47
  %57 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %58 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @get_fc_port_roles_names(i64 %59, i8* %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %56, %53, %44, %41, %38, %35, %32, %29
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.fc_rport* @transport_class_to_rport(%struct.device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @get_fc_port_roles_names(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
