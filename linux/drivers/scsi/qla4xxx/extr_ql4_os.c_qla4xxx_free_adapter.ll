; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_free_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_free_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_8__*, i64, i64, i64, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@DID_NO_CONNECT = common dso_local global i32 0, align 4
@CSR_SCSI_PROCESSOR_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*)* @qla4xxx_free_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_free_adapter(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %3 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %4 = load i32, i32* @DID_NO_CONNECT, align 4
  %5 = shl i32 %4, 16
  %6 = call i32 @qla4xxx_abort_active_cmds(%struct.scsi_qla_host* %3, i32 %5)
  %7 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %11 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %10, align 8
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %13 = call i32 %11(%struct.scsi_qla_host* %12)
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %15 = call i64 @is_qla40XX(%struct.scsi_qla_host* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load i32, i32* @CSR_SCSI_PROCESSOR_INTR, align 4
  %19 = call i32 @set_rmask(i32 %18)
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %21 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %20, i32 0, i32 6
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @writel(i32 %19, i32* %23)
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %26 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %25, i32 0, i32 6
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @readl(i32* %28)
  br label %66

30:                                               ; preds = %1
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %32 = call i64 @is_qla8022(%struct.scsi_qla_host* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %36 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %35, i32 0, i32 5
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i32 @writel(i32 0, i32* %38)
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %41 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %40, i32 0, i32 5
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = call i32 @readl(i32* %43)
  br label %65

45:                                               ; preds = %30
  %46 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %47 = call i64 @is_qla8032(%struct.scsi_qla_host* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %51 = call i64 @is_qla8042(%struct.scsi_qla_host* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %49, %45
  %54 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %55 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %54, i32 0, i32 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = call i32 @writel(i32 0, i32* %57)
  %59 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %60 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %59, i32 0, i32 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = call i32 @readl(i32* %62)
  br label %64

64:                                               ; preds = %53, %49
  br label %65

65:                                               ; preds = %64, %34
  br label %66

66:                                               ; preds = %65, %17
  %67 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %68 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %73 = call i32 @qla4xxx_stop_timer(%struct.scsi_qla_host* %72)
  br label %74

74:                                               ; preds = %71, %66
  %75 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %76 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %81 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @destroy_workqueue(i64 %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %86 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %91 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @destroy_workqueue(i64 %92)
  br label %94

94:                                               ; preds = %89, %84
  %95 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %96 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %98, align 8
  %100 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %101 = call i32 %99(%struct.scsi_qla_host* %100)
  %102 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %103 = call i64 @is_qla80XX(%struct.scsi_qla_host* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %94
  %106 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %107 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %109, align 8
  %111 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %112 = call i32 %110(%struct.scsi_qla_host* %111)
  %113 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %114 = call i32 @qla4_8xxx_clear_drv_active(%struct.scsi_qla_host* %113)
  %115 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %116 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %115, i32 0, i32 0
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %118, align 8
  %120 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %121 = call i32 %119(%struct.scsi_qla_host* %120)
  br label %122

122:                                              ; preds = %105, %94
  %123 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %124 = call i32 @qla4xxx_free_irqs(%struct.scsi_qla_host* %123)
  %125 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %126 = call i32 @qla4xxx_mem_free(%struct.scsi_qla_host* %125)
  ret void
}

declare dso_local i32 @qla4xxx_abort_active_cmds(%struct.scsi_qla_host*, i32) #1

declare dso_local i64 @is_qla40XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @set_rmask(i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i64 @is_qla8022(%struct.scsi_qla_host*) #1

declare dso_local i64 @is_qla8032(%struct.scsi_qla_host*) #1

declare dso_local i64 @is_qla8042(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_stop_timer(%struct.scsi_qla_host*) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i64 @is_qla80XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_8xxx_clear_drv_active(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_free_irqs(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_mem_free(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
