; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_add_rport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_add_rport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_target = type { i64, %struct.TYPE_5__, i32, %struct.fc_rport*, i32, i32, i32, i32, %struct.ibmvfc_host* }
%struct.TYPE_5__ = type { i32*, i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fc_rport = type { i32, i64, i32, i32 }
%struct.ibmvfc_host = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Adding rport\0A\00", align 1
@IBMVFC_TGT_ACTION_DEL_RPORT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Deleting rport\0A\00", align 1
@IBMVFC_TGT_ACTION_DELETED_RPORT = common dso_local global i64 0, align 8
@ibmvfc_release_tgt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"rport add succeeded\0A\00", align 1
@FC_COS_CLASS1 = common dso_local global i32 0, align 4
@FC_COS_CLASS2 = common dso_local global i32 0, align 4
@FC_COS_CLASS3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"rport add failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_target*)* @ibmvfc_tgt_add_rport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_tgt_add_rport(%struct.ibmvfc_target* %0) #0 {
  %2 = alloca %struct.ibmvfc_target*, align 8
  %3 = alloca %struct.ibmvfc_host*, align 8
  %4 = alloca %struct.fc_rport*, align 8
  %5 = alloca i64, align 8
  store %struct.ibmvfc_target* %0, %struct.ibmvfc_target** %2, align 8
  %6 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %7 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %6, i32 0, i32 8
  %8 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %7, align 8
  store %struct.ibmvfc_host* %8, %struct.ibmvfc_host** %3, align 8
  %9 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %10 = call i32 @tgt_dbg(%struct.ibmvfc_target* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %12 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %15 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %14, i32 0, i32 7
  %16 = call %struct.fc_rport* @fc_remote_port_add(%struct.TYPE_6__* %13, i32 0, i32* %15)
  store %struct.fc_rport* %16, %struct.fc_rport** %4, align 8
  %17 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %18 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_lock_irqsave(i32 %21, i64 %22)
  %24 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %25 = icmp ne %struct.fc_rport* %24, null
  br i1 %25, label %26, label %57

26:                                               ; preds = %1
  %27 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %28 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IBMVFC_TGT_ACTION_DEL_RPORT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %26
  %33 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %34 = call i32 @tgt_dbg(%struct.ibmvfc_target* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %36 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %35, i32 0, i32 6
  %37 = call i32 @list_del(i32* %36)
  %38 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %39 = load i64, i64* @IBMVFC_TGT_ACTION_DELETED_RPORT, align 8
  %40 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %38, i64 %39)
  %41 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %42 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32 %45, i64 %46)
  %48 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %49 = call i32 @fc_remote_port_delete(%struct.fc_rport* %48)
  %50 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %51 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %50, i32 0, i32 5
  %52 = call i32 @del_timer_sync(i32* %51)
  %53 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %54 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %53, i32 0, i32 4
  %55 = load i32, i32* @ibmvfc_release_tgt, align 4
  %56 = call i32 @kref_put(i32* %54, i32 %55)
  br label %169

57:                                               ; preds = %26, %1
  %58 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %59 = icmp ne %struct.fc_rport* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %62 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IBMVFC_TGT_ACTION_DELETED_RPORT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %68 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32 %71, i64 %72)
  br label %169

74:                                               ; preds = %60, %57
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %77 = icmp ne %struct.fc_rport* %76, null
  br i1 %77, label %78, label %158

78:                                               ; preds = %75
  %79 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %80 = call i32 @tgt_dbg(%struct.ibmvfc_target* %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %81 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %82 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %83 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %82, i32 0, i32 3
  store %struct.fc_rport* %81, %struct.fc_rport** %83, align 8
  %84 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %85 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @be16_to_cpu(i32 %88)
  %90 = and i32 %89, 4095
  %91 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %92 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %94 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %93, i32 0, i32 2
  store i32 0, i32* %94, align 8
  %95 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %96 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %99 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %101 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @be32_to_cpu(i32 %105)
  %107 = and i32 %106, -2147483648
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %78
  %110 = load i32, i32* @FC_COS_CLASS1, align 4
  %111 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %112 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %109, %78
  %116 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %117 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @be32_to_cpu(i32 %121)
  %123 = and i32 %122, -2147483648
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %115
  %126 = load i32, i32* @FC_COS_CLASS2, align 4
  %127 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %128 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %125, %115
  %132 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %133 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @be32_to_cpu(i32 %137)
  %139 = and i32 %138, -2147483648
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %131
  %142 = load i32, i32* @FC_COS_CLASS3, align 4
  %143 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %144 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %141, %131
  %148 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %149 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %154 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @blk_queue_max_segments(i64 %155, i32 1)
  br label %157

157:                                              ; preds = %152, %147
  br label %161

158:                                              ; preds = %75
  %159 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %160 = call i32 @tgt_dbg(%struct.ibmvfc_target* %159, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %161

161:                                              ; preds = %158, %157
  %162 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %163 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %162, i32 0, i32 0
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i64, i64* %5, align 8
  %168 = call i32 @spin_unlock_irqrestore(i32 %166, i64 %167)
  br label %169

169:                                              ; preds = %161, %66, %32
  ret void
}

declare dso_local i32 @tgt_dbg(%struct.ibmvfc_target*, i8*) #1

declare dso_local %struct.fc_rport* @fc_remote_port_add(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @fc_remote_port_delete(%struct.fc_rport*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @blk_queue_max_segments(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
