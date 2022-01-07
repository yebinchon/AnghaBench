; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_plogi_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_plogi_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_event = type { %struct.TYPE_5__*, %struct.ibmvfc_host*, %struct.ibmvfc_target* }
%struct.TYPE_5__ = type { %struct.ibmvfc_port_login }
%struct.ibmvfc_port_login = type { i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ibmvfc_host = type { i32, i32, i32 }
%struct.ibmvfc_target = type { i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32, i8* }

@IBMVFC_DEFAULT_LOG_LEVEL = common dso_local global i32 0, align 4
@IBMVFC_TGT_ACTION_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Port Login succeeded\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Port re-init required\0A\00", align 1
@ibmvfc_tgt_send_prli = common dso_local global i32 0, align 4
@ibmvfc_tgt_send_plogi = common dso_local global i32 0, align 4
@IBMVFC_TGT_ACTION_DEL_RPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"Port Login failed: %s (%x:%x) %s (%x) %s (%x) rc=0x%02X\0A\00", align 1
@ibmvfc_release_tgt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_event*)* @ibmvfc_tgt_plogi_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_tgt_plogi_done(%struct.ibmvfc_event* %0) #0 {
  %2 = alloca %struct.ibmvfc_event*, align 8
  %3 = alloca %struct.ibmvfc_target*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca %struct.ibmvfc_port_login*, align 8
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
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.ibmvfc_port_login* %17, %struct.ibmvfc_port_login** %5, align 8
  %18 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %19 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @be16_to_cpu(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @IBMVFC_DEFAULT_LOG_LEVEL, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %25 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %29 = load i32, i32* @IBMVFC_TGT_ACTION_NONE, align 4
  %30 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %98 [
    i32 128, label %32
    i32 130, label %92
    i32 131, label %93
    i32 129, label %97
  ]

32:                                               ; preds = %1
  %33 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %34 = call i32 @tgt_dbg(%struct.ibmvfc_target* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %36 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %32
  %41 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %42 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %46 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @wwn_to_u64(i32 %48)
  %50 = icmp ne i8* %44, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %53 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %55 = call i32 @tgt_dbg(%struct.ibmvfc_target* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %159

56:                                               ; preds = %40, %32
  %57 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %58 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @wwn_to_u64(i32 %60)
  %62 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %63 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  store i8* %61, i8** %64, align 8
  %65 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %66 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @wwn_to_u64(i32 %68)
  %70 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %71 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  %73 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %74 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %77 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 8
  %79 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %80 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %79, i32 0, i32 2
  %81 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %82 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %81, i32 0, i32 5
  %83 = call i32 @memcpy(i32* %80, %struct.TYPE_8__* %82, i32 4)
  %84 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %85 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %84, i32 0, i32 1
  %86 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %87 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %86, i32 0, i32 4
  %88 = call i32 @memcpy(i32* %85, %struct.TYPE_8__* %87, i32 4)
  %89 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %90 = load i32, i32* @ibmvfc_tgt_send_prli, align 4
  %91 = call i32 @ibmvfc_init_tgt(%struct.ibmvfc_target* %89, i32 %90)
  br label %159

92:                                               ; preds = %1
  br label %159

93:                                               ; preds = %1
  %94 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %95 = load i32, i32* @ibmvfc_tgt_send_plogi, align 4
  %96 = call i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target* %94, i32 %95)
  br label %159

97:                                               ; preds = %1
  br label %98

98:                                               ; preds = %1, %97
  %99 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %100 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @be16_to_cpu(i32 %101)
  %103 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %104 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @be16_to_cpu(i32 %105)
  %107 = call i32 @ibmvfc_retry_cmd(i32 %102, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %98
  %110 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %111 = load i32, i32* @ibmvfc_tgt_send_plogi, align 4
  %112 = call i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target* %110, i32 %111)
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %7, align 4
  br label %119

115:                                              ; preds = %98
  %116 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %117 = load i32, i32* @IBMVFC_TGT_ACTION_DEL_RPORT, align 4
  %118 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %109
  %120 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %123 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @be16_to_cpu(i32 %124)
  %126 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %127 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @be16_to_cpu(i32 %128)
  %130 = call i32 @ibmvfc_get_cmd_error(i32 %125, i32 %129)
  %131 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %132 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @be16_to_cpu(i32 %133)
  %135 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %136 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @be16_to_cpu(i32 %137)
  %139 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %140 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @be16_to_cpu(i32 %141)
  %143 = call i32 @ibmvfc_get_fc_type(i32 %142)
  %144 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %145 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @be16_to_cpu(i32 %146)
  %148 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %149 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @be16_to_cpu(i32 %150)
  %152 = call i32 @ibmvfc_get_ls_explain(i32 %151)
  %153 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %154 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @be16_to_cpu(i32 %155)
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @tgt_log(%struct.ibmvfc_target* %120, i32 %121, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %134, i32 %138, i32 %143, i32 %147, i32 %152, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %119, %93, %92, %56, %51
  %160 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %161 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %160, i32 0, i32 0
  %162 = load i32, i32* @ibmvfc_release_tgt, align 4
  %163 = call i32 @kref_put(i32* %161, i32 %162)
  %164 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %165 = call i32 @ibmvfc_free_event(%struct.ibmvfc_event* %164)
  %166 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %167 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %166, i32 0, i32 1
  %168 = call i32 @wake_up(i32* %167)
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @tgt_dbg(%struct.ibmvfc_target*, i8*) #1

declare dso_local i8* @wwn_to_u64(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @ibmvfc_init_tgt(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @ibmvfc_retry_cmd(i32, i32) #1

declare dso_local i32 @tgt_log(%struct.ibmvfc_target*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ibmvfc_get_cmd_error(i32, i32) #1

declare dso_local i32 @ibmvfc_get_fc_type(i32) #1

declare dso_local i32 @ibmvfc_get_ls_explain(i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @ibmvfc_free_event(%struct.ibmvfc_event*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
