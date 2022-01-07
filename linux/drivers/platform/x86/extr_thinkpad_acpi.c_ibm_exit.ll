; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_ibm_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_ibm_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibm_struct = type { i32, %struct.TYPE_4__, i32 (...)*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32*, i32, i32* }

@TPACPI_DBG_EXIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"removing %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: acpi_remove_notify_handler\0A\00", align 1
@dispatch_acpi_notify = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: remove_proc_entry\0A\00", align 1
@proc_dir = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"%s: acpi_bus_unregister_driver\0A\00", align 1
@TPACPI_DBG_INIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"finished removing %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibm_struct*)* @ibm_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibm_exit(%struct.ibm_struct* %0) #0 {
  %2 = alloca %struct.ibm_struct*, align 8
  store %struct.ibm_struct* %0, %struct.ibm_struct** %2, align 8
  %3 = load i32, i32* @TPACPI_DBG_EXIT, align 4
  %4 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %5 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @dbg_printk(i32 %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %9 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %8, i32 0, i32 4
  %10 = call i32 @list_del_init(i32* %9)
  %11 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %12 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %1
  %17 = load i32, i32* @TPACPI_DBG_EXIT, align 4
  %18 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %19 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dbg_printk(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %23 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %30 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %36 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @dispatch_acpi_notify, align 4
  %41 = call i32 @acpi_remove_notify_handler(i32 %34, i32 %39, i32 %40)
  %42 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %43 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %16, %1
  %46 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %47 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = load i32, i32* @TPACPI_DBG_EXIT, align 4
  %53 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %54 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dbg_printk(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %58 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @proc_dir, align 4
  %61 = call i32 @remove_proc_entry(i32 %59, i32 %60)
  %62 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %63 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %51, %45
  %66 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %67 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %103

71:                                               ; preds = %65
  %72 = load i32, i32* @TPACPI_DBG_EXIT, align 4
  %73 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %74 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dbg_printk(i32 %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %78 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %77, i32 0, i32 3
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = icmp ne %struct.TYPE_3__* %79, null
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @BUG_ON(i32 %82)
  %84 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %85 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %84, i32 0, i32 3
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @acpi_bus_unregister_driver(i32* %88)
  %90 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %91 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %90, i32 0, i32 3
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @kfree(i32* %94)
  %96 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %97 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %96, i32 0, i32 3
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32* null, i32** %99, align 8
  %100 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %101 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %71, %65
  %104 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %105 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %103
  %110 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %111 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %110, i32 0, i32 2
  %112 = load i32 (...)*, i32 (...)** %111, align 8
  %113 = icmp ne i32 (...)* %112, null
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %116 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %115, i32 0, i32 2
  %117 = load i32 (...)*, i32 (...)** %116, align 8
  %118 = call i32 (...) %117()
  %119 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %120 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %114, %109, %103
  %123 = load i32, i32* @TPACPI_DBG_INIT, align 4
  %124 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %125 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @dbg_printk(i32 %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  ret void
}

declare dso_local i32 @dbg_printk(i32, i8*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @acpi_remove_notify_handler(i32, i32, i32) #1

declare dso_local i32 @remove_proc_entry(i32, i32) #1

declare dso_local i32 @acpi_bus_unregister_driver(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
