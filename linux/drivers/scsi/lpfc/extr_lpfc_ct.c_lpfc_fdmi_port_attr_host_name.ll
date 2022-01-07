; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_fdmi_port_attr_host_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_fdmi_port_attr_host_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_fdmi_attr_def = type { i8*, i8*, i32 }
%struct.lpfc_fdmi_attr_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FOURBYTES = common dso_local global i32 0, align 4
@RPRT_HOST_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_fdmi_attr_def*)* @lpfc_fdmi_port_attr_host_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_fdmi_port_attr_host_name(%struct.lpfc_vport* %0, %struct.lpfc_fdmi_attr_def* %1) #0 {
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_fdmi_attr_def*, align 8
  %5 = alloca %struct.lpfc_fdmi_attr_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  store %struct.lpfc_fdmi_attr_def* %1, %struct.lpfc_fdmi_attr_def** %4, align 8
  %8 = load %struct.lpfc_fdmi_attr_def*, %struct.lpfc_fdmi_attr_def** %4, align 8
  %9 = getelementptr inbounds %struct.lpfc_fdmi_attr_def, %struct.lpfc_fdmi_attr_def* %8, i32 0, i32 2
  %10 = bitcast i32* %9 to %struct.lpfc_fdmi_attr_entry*
  store %struct.lpfc_fdmi_attr_entry* %10, %struct.lpfc_fdmi_attr_entry** %5, align 8
  %11 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %5, align 8
  %12 = call i32 @memset(%struct.lpfc_fdmi_attr_entry* %11, i32 0, i32 256)
  %13 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %5, align 8
  %14 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_4__* (...) @init_utsname()
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @snprintf(i32 %16, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %5, align 8
  %22 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strnlen(i32 %24, i32 4)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 3
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 3
  %32 = sub nsw i32 4, %31
  br label %34

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i32 [ %32, %29 ], [ 4, %33 ]
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @FOURBYTES, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i8* @cpu_to_be16(i32 %41)
  %43 = load %struct.lpfc_fdmi_attr_def*, %struct.lpfc_fdmi_attr_def** %4, align 8
  %44 = getelementptr inbounds %struct.lpfc_fdmi_attr_def, %struct.lpfc_fdmi_attr_def* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @RPRT_HOST_NAME, align 4
  %46 = call i8* @cpu_to_be16(i32 %45)
  %47 = load %struct.lpfc_fdmi_attr_def*, %struct.lpfc_fdmi_attr_def** %4, align 8
  %48 = getelementptr inbounds %struct.lpfc_fdmi_attr_def, %struct.lpfc_fdmi_attr_def* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @memset(%struct.lpfc_fdmi_attr_entry*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @init_utsname(...) #1

declare dso_local i32 @strnlen(i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
