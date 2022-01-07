; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_handle_cmd_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_handle_cmd_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_event_struct = type { i32 (%struct.scsi_cmnd*)*, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.scsi_cmnd.0*, %struct.TYPE_7__* }
%struct.scsi_cmnd = type opaque
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.scsi_cmnd.0 = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.srp_rsp }
%struct.srp_rsp = type { i64, i32, i32, i32, i32, i32, i32 }

@SRP_RSP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"bad SRP RSP type %#02x\0A\00", align 1
@CHECK_CONDITION = common dso_local global i32 0, align 4
@SRP_RSP_FLAG_DOOVER = common dso_local global i32 0, align 4
@SRP_RSP_FLAG_DIOVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srp_event_struct*)* @handle_cmd_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_cmd_rsp(%struct.srp_event_struct* %0) #0 {
  %2 = alloca %struct.srp_event_struct*, align 8
  %3 = alloca %struct.srp_rsp*, align 8
  %4 = alloca %struct.scsi_cmnd.0*, align 8
  store %struct.srp_event_struct* %0, %struct.srp_event_struct** %2, align 8
  %5 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %6 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %5, i32 0, i32 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.srp_rsp* %9, %struct.srp_rsp** %3, align 8
  %10 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %11 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %10, i32 0, i32 3
  %12 = load %struct.scsi_cmnd.0*, %struct.scsi_cmnd.0** %11, align 8
  store %struct.scsi_cmnd.0* %12, %struct.scsi_cmnd.0** %4, align 8
  %13 = load %struct.srp_rsp*, %struct.srp_rsp** %3, align 8
  %14 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SRP_RSP, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = call i64 (...) @printk_ratelimit()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %26 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %25, i32 0, i32 1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.srp_rsp*, %struct.srp_rsp** %3, align 8
  %31 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @dev_warn(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %24, %21
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.scsi_cmnd.0*, %struct.scsi_cmnd.0** %4, align 8
  %37 = icmp ne %struct.scsi_cmnd.0* %36, null
  br i1 %37, label %38, label %106

38:                                               ; preds = %35
  %39 = load %struct.srp_rsp*, %struct.srp_rsp** %3, align 8
  %40 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.scsi_cmnd.0*, %struct.scsi_cmnd.0** %4, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd.0, %struct.scsi_cmnd.0* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.scsi_cmnd.0*, %struct.scsi_cmnd.0** %4, align 8
  %47 = getelementptr inbounds %struct.scsi_cmnd.0, %struct.scsi_cmnd.0* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 1
  %50 = and i32 %49, 31
  %51 = load i32, i32* @CHECK_CONDITION, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %38
  %54 = load %struct.scsi_cmnd.0*, %struct.scsi_cmnd.0** %4, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd.0, %struct.scsi_cmnd.0* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.srp_rsp*, %struct.srp_rsp** %3, align 8
  %58 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.srp_rsp*, %struct.srp_rsp** %3, align 8
  %61 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @be32_to_cpu(i32 %62)
  %64 = call i32 @memcpy(i32 %56, i32 %59, i32 %63)
  br label %65

65:                                               ; preds = %53, %38
  %66 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %67 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %71 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %72 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @unmap_cmd_data(i32* %69, %struct.srp_event_struct* %70, i32 %75)
  %77 = load %struct.srp_rsp*, %struct.srp_rsp** %3, align 8
  %78 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @SRP_RSP_FLAG_DOOVER, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %65
  %84 = load %struct.scsi_cmnd.0*, %struct.scsi_cmnd.0** %4, align 8
  %85 = load %struct.srp_rsp*, %struct.srp_rsp** %3, align 8
  %86 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @be32_to_cpu(i32 %87)
  %89 = call i32 @scsi_set_resid(%struct.scsi_cmnd.0* %84, i32 %88)
  br label %105

90:                                               ; preds = %65
  %91 = load %struct.srp_rsp*, %struct.srp_rsp** %3, align 8
  %92 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SRP_RSP_FLAG_DIOVER, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load %struct.scsi_cmnd.0*, %struct.scsi_cmnd.0** %4, align 8
  %99 = load %struct.srp_rsp*, %struct.srp_rsp** %3, align 8
  %100 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @be32_to_cpu(i32 %101)
  %103 = call i32 @scsi_set_resid(%struct.scsi_cmnd.0* %98, i32 %102)
  br label %104

104:                                              ; preds = %97, %90
  br label %105

105:                                              ; preds = %104, %83
  br label %106

106:                                              ; preds = %105, %35
  %107 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %108 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %107, i32 0, i32 0
  %109 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %108, align 8
  %110 = icmp ne i32 (%struct.scsi_cmnd*)* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %113 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %112, i32 0, i32 0
  %114 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %113, align 8
  %115 = load %struct.scsi_cmnd.0*, %struct.scsi_cmnd.0** %4, align 8
  %116 = bitcast %struct.scsi_cmnd.0* %115 to %struct.scsi_cmnd*
  %117 = call i32 %114(%struct.scsi_cmnd* %116)
  br label %118

118:                                              ; preds = %111, %106
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @unmap_cmd_data(i32*, %struct.srp_event_struct*, i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd.0*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
