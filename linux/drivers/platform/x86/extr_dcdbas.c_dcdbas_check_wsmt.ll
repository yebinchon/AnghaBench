; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dcdbas.c_dcdbas_check_wsmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dcdbas.c_dcdbas_check_wsmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.acpi_table_wsmt = type { i32 }
%struct.smm_eps_table = type { i32, i64 }
%struct.acpi_table_header = type { i32 }

@ACPI_SIG_WSMT = common dso_local global i32 0, align 4
@ACPI_WSMT_FIXED_COMM_BUFFERS = common dso_local global i32 0, align 4
@ACPI_WSMT_COMM_BUFFER_NESTED_PTR_PROTECTION = common dso_local global i32 0, align 4
@dcdbas_pdev = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"found WSMT, but no EPS found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"found WSMT, but EPS buffer address is above 4GB\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MAX_SMI_DATA_BUF_SIZE = common dso_local global i32 0, align 4
@MEMREMAP_WB = common dso_local global i32 0, align 4
@eps_buffer = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"found WSMT, but failed to map EPS buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@smi_data_buf_phys_addr = common dso_local global i64 0, align 8
@smi_data_buf = common dso_local global i64 0, align 8
@smi_data_buf_size = common dso_local global i32 0, align 4
@max_smi_data_buf_size = common dso_local global i32 0, align 4
@wsmt_enabled = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"WSMT found, using firmware-provided SMI buffer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dcdbas_check_wsmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcdbas_check_wsmt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.acpi_table_wsmt*, align 8
  %3 = alloca %struct.smm_eps_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.acpi_table_wsmt* null, %struct.acpi_table_wsmt** %2, align 8
  store %struct.smm_eps_table* null, %struct.smm_eps_table** %3, align 8
  %6 = load i32, i32* @ACPI_SIG_WSMT, align 4
  %7 = bitcast %struct.acpi_table_wsmt** %2 to %struct.acpi_table_header**
  %8 = call i32 @acpi_get_table(i32 %6, i32 0, %struct.acpi_table_header** %7)
  %9 = load %struct.acpi_table_wsmt*, %struct.acpi_table_wsmt** %2, align 8
  %10 = icmp ne %struct.acpi_table_wsmt* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %108

12:                                               ; preds = %0
  %13 = load %struct.acpi_table_wsmt*, %struct.acpi_table_wsmt** %2, align 8
  %14 = getelementptr inbounds %struct.acpi_table_wsmt, %struct.acpi_table_wsmt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ACPI_WSMT_FIXED_COMM_BUFFERS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.acpi_table_wsmt*, %struct.acpi_table_wsmt** %2, align 8
  %21 = getelementptr inbounds %struct.acpi_table_wsmt, %struct.acpi_table_wsmt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ACPI_WSMT_COMM_BUFFER_NESTED_PTR_PROTECTION, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19, %12
  store i32 0, i32* %1, align 4
  br label %108

27:                                               ; preds = %19
  %28 = call i64 @__va(i32 983040)
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %5, align 8
  br label %30

30:                                               ; preds = %42, %27
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @__va(i32 1048560)
  %33 = inttoptr i64 %32 to i32*
  %34 = icmp ult i32* %31, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i32*, i32** %5, align 8
  %37 = call %struct.smm_eps_table* @check_eps_table(i32* %36)
  store %struct.smm_eps_table* %37, %struct.smm_eps_table** %3, align 8
  %38 = load %struct.smm_eps_table*, %struct.smm_eps_table** %3, align 8
  %39 = icmp ne %struct.smm_eps_table* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %45

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 16
  store i32* %44, i32** %5, align 8
  br label %30

45:                                               ; preds = %40, %30
  %46 = load %struct.smm_eps_table*, %struct.smm_eps_table** %3, align 8
  %47 = icmp ne %struct.smm_eps_table* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dcdbas_pdev, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @dev_dbg(i32* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %1, align 4
  br label %108

54:                                               ; preds = %45
  %55 = load %struct.smm_eps_table*, %struct.smm_eps_table** %3, align 8
  %56 = getelementptr inbounds %struct.smm_eps_table, %struct.smm_eps_table* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 8
  %59 = call i64 @upper_32_bits(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dcdbas_pdev, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @dev_warn(i32* %63, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %1, align 4
  br label %108

67:                                               ; preds = %54
  %68 = load %struct.smm_eps_table*, %struct.smm_eps_table** %3, align 8
  %69 = getelementptr inbounds %struct.smm_eps_table, %struct.smm_eps_table* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = mul nsw i32 %70, %71
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @MAX_SMI_DATA_BUF_SIZE, align 4
  %75 = add nsw i32 %74, 8
  %76 = icmp sgt i32 %73, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load i32, i32* @MAX_SMI_DATA_BUF_SIZE, align 4
  %79 = add nsw i32 %78, 8
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %77, %67
  %81 = load %struct.smm_eps_table*, %struct.smm_eps_table** %3, align 8
  %82 = getelementptr inbounds %struct.smm_eps_table, %struct.smm_eps_table* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @MEMREMAP_WB, align 4
  %86 = call i64 @memremap(i64 %83, i32 %84, i32 %85)
  store i64 %86, i64* @eps_buffer, align 8
  %87 = load i64, i64* @eps_buffer, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %80
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dcdbas_pdev, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = call i32 @dev_warn(i32* %91, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %1, align 4
  br label %108

95:                                               ; preds = %80
  %96 = load %struct.smm_eps_table*, %struct.smm_eps_table** %3, align 8
  %97 = getelementptr inbounds %struct.smm_eps_table, %struct.smm_eps_table* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 8
  store i64 %99, i64* @smi_data_buf_phys_addr, align 8
  %100 = load i64, i64* @eps_buffer, align 8
  %101 = add nsw i64 %100, 8
  store i64 %101, i64* @smi_data_buf, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sub nsw i32 %102, 8
  store i32 %103, i32* @smi_data_buf_size, align 4
  %104 = load i32, i32* @smi_data_buf_size, align 4
  store i32 %104, i32* @max_smi_data_buf_size, align 4
  store i32 1, i32* @wsmt_enabled, align 4
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dcdbas_pdev, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = call i32 @dev_info(i32* %106, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %108

108:                                              ; preds = %95, %89, %61, %48, %26, %11
  %109 = load i32, i32* %1, align 4
  ret i32 %109
}

declare dso_local i32 @acpi_get_table(i32, i32, %struct.acpi_table_header**) #1

declare dso_local i64 @__va(i32) #1

declare dso_local %struct.smm_eps_table* @check_eps_table(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @upper_32_bits(i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @memremap(i64, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
