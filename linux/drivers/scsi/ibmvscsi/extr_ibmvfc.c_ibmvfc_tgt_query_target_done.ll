; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_query_target_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_query_target_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_event = type { %struct.TYPE_3__*, %struct.ibmvfc_host*, %struct.ibmvfc_target* }
%struct.TYPE_3__ = type { %struct.ibmvfc_query_tgt }
%struct.ibmvfc_query_tgt = type { i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ibmvfc_host = type { i32, i32 }
%struct.ibmvfc_target = type { i32, i32, i32 }

@IBMVFC_DEFAULT_LOG_LEVEL = common dso_local global i32 0, align 4
@IBMVFC_TGT_ACTION_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Query Target succeeded\0A\00", align 1
@ibmvfc_tgt_implicit_logout = common dso_local global i32 0, align 4
@ibmvfc_tgt_adisc = common dso_local global i32 0, align 4
@ibmvfc_tgt_query_target = common dso_local global i32 0, align 4
@IBMVFC_FABRIC_MAPPED = common dso_local global i32 0, align 4
@IBMVFC_UNABLE_TO_PERFORM_REQ = common dso_local global i32 0, align 4
@IBMVFC_PORT_NAME_NOT_REG = common dso_local global i32 0, align 4
@IBMVFC_TGT_ACTION_DEL_RPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Query Target failed: %s (%x:%x) %s (%x) %s (%x) rc=0x%02X\0A\00", align 1
@ibmvfc_release_tgt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_event*)* @ibmvfc_tgt_query_target_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_tgt_query_target_done(%struct.ibmvfc_event* %0) #0 {
  %2 = alloca %struct.ibmvfc_event*, align 8
  %3 = alloca %struct.ibmvfc_target*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca %struct.ibmvfc_query_tgt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %2, align 8
  %8 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %9 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %8, i32 0, i32 2
  %10 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %9, align 8
  store %struct.ibmvfc_target* %10, %struct.ibmvfc_target** %3, align 8
  %11 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %12 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %11, i32 0, i32 1
  %13 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %12, align 8
  store %struct.ibmvfc_host* %13, %struct.ibmvfc_host** %4, align 8
  %14 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %15 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.ibmvfc_query_tgt* %17, %struct.ibmvfc_query_tgt** %5, align 8
  %18 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %19 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @be16_to_cpu(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @IBMVFC_DEFAULT_LOG_LEVEL, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %25 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %29 = load i32, i32* @IBMVFC_TGT_ACTION_NONE, align 4
  %30 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %64 [
    i32 128, label %32
    i32 130, label %58
    i32 131, label %59
    i32 129, label %63
  ]

32:                                               ; preds = %1
  %33 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %34 = call i32 @tgt_dbg(%struct.ibmvfc_target* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %36 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @be64_to_cpu(i32 %37)
  %39 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %40 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %42 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be64_to_cpu(i32 %43)
  %45 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %46 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %32
  %50 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %51 = load i32, i32* @ibmvfc_tgt_implicit_logout, align 4
  %52 = call i32 @ibmvfc_init_tgt(%struct.ibmvfc_target* %50, i32 %51)
  br label %57

53:                                               ; preds = %32
  %54 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %55 = load i32, i32* @ibmvfc_tgt_adisc, align 4
  %56 = call i32 @ibmvfc_init_tgt(%struct.ibmvfc_target* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %49
  br label %153

58:                                               ; preds = %1
  br label %153

59:                                               ; preds = %1
  %60 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %61 = load i32, i32* @ibmvfc_tgt_query_target, align 4
  %62 = call i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target* %60, i32 %61)
  br label %153

63:                                               ; preds = %1
  br label %64

64:                                               ; preds = %1, %63
  %65 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %66 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @be16_to_cpu(i32 %67)
  %69 = load i32, i32* @IBMVFC_FABRIC_MAPPED, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @IBMVFC_FABRIC_MAPPED, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %64
  %74 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %75 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @be16_to_cpu(i32 %76)
  %78 = load i32, i32* @IBMVFC_UNABLE_TO_PERFORM_REQ, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %73
  %81 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %82 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @be16_to_cpu(i32 %83)
  %85 = load i32, i32* @IBMVFC_PORT_NAME_NOT_REG, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %89 = load i32, i32* @IBMVFC_TGT_ACTION_DEL_RPORT, align 4
  %90 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %88, i32 %89)
  br label %113

91:                                               ; preds = %80, %73, %64
  %92 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %93 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @be16_to_cpu(i32 %94)
  %96 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %97 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @be16_to_cpu(i32 %98)
  %100 = call i32 @ibmvfc_retry_cmd(i32 %95, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %91
  %103 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %104 = load i32, i32* @ibmvfc_tgt_query_target, align 4
  %105 = call i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target* %103, i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %7, align 4
  br label %112

108:                                              ; preds = %91
  %109 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %110 = load i32, i32* @IBMVFC_TGT_ACTION_DEL_RPORT, align 4
  %111 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %102
  br label %113

113:                                              ; preds = %112, %87
  %114 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %117 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @be16_to_cpu(i32 %118)
  %120 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %121 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @be16_to_cpu(i32 %122)
  %124 = call i32 @ibmvfc_get_cmd_error(i32 %119, i32 %123)
  %125 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %126 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @be16_to_cpu(i32 %127)
  %129 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %130 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @be16_to_cpu(i32 %131)
  %133 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %134 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @be16_to_cpu(i32 %135)
  %137 = call i32 @ibmvfc_get_fc_type(i32 %136)
  %138 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %139 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @be16_to_cpu(i32 %140)
  %142 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %143 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @be16_to_cpu(i32 %144)
  %146 = call i32 @ibmvfc_get_gs_explain(i32 %145)
  %147 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %148 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @be16_to_cpu(i32 %149)
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @tgt_log(%struct.ibmvfc_target* %114, i32 %115, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %124, i32 %128, i32 %132, i32 %137, i32 %141, i32 %146, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %113, %59, %58, %57
  %154 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %155 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %154, i32 0, i32 0
  %156 = load i32, i32* @ibmvfc_release_tgt, align 4
  %157 = call i32 @kref_put(i32* %155, i32 %156)
  %158 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %159 = call i32 @ibmvfc_free_event(%struct.ibmvfc_event* %158)
  %160 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %161 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %160, i32 0, i32 0
  %162 = call i32 @wake_up(i32* %161)
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @tgt_dbg(%struct.ibmvfc_target*, i8*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @ibmvfc_init_tgt(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @ibmvfc_retry_cmd(i32, i32) #1

declare dso_local i32 @tgt_log(%struct.ibmvfc_target*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ibmvfc_get_cmd_error(i32, i32) #1

declare dso_local i32 @ibmvfc_get_fc_type(i32) #1

declare dso_local i32 @ibmvfc_get_gs_explain(i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @ibmvfc_free_event(%struct.ibmvfc_event*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
