; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_fc_get_host_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_fc_get_host_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, %struct.qed_fcoe_stats*)* }
%struct.qed_fcoe_stats = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_host_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.fc_lport = type { i64 }
%struct.qedf_ctx = type { i32, i64, i64, i64, i64, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Could not allocate memory for fw_fcoe_stats.\0A\00", align 1
@qed_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_host_statistics* (%struct.Scsi_Host*)* @qedf_fc_get_host_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_host_statistics* @qedf_fc_get_host_stats(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.fc_host_statistics*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.qedf_ctx*, align 8
  %6 = alloca %struct.qed_fcoe_stats*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %8 = call %struct.fc_lport* @shost_priv(%struct.Scsi_Host* %7)
  store %struct.fc_lport* %8, %struct.fc_lport** %4, align 8
  %9 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %10 = call %struct.qedf_ctx* @lport_priv(%struct.fc_lport* %9)
  store %struct.qedf_ctx* %10, %struct.qedf_ctx** %5, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %12 = call %struct.fc_host_statistics* @fc_get_host_stats(%struct.Scsi_Host* %11)
  store %struct.fc_host_statistics* %12, %struct.fc_host_statistics** %3, align 8
  %13 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %14 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %182

18:                                               ; preds = %1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.qed_fcoe_stats* @kmalloc(i32 72, i32 %19)
  store %struct.qed_fcoe_stats* %20, %struct.qed_fcoe_stats** %6, align 8
  %21 = load %struct.qed_fcoe_stats*, %struct.qed_fcoe_stats** %6, align 8
  %22 = icmp ne %struct.qed_fcoe_stats* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %24, i32 0, i32 7
  %26 = call i32 @QEDF_ERR(i32* %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %182

27:                                               ; preds = %18
  %28 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qed_ops, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (i32, %struct.qed_fcoe_stats*)*, i32 (i32, %struct.qed_fcoe_stats*)** %32, align 8
  %34 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.qed_fcoe_stats*, %struct.qed_fcoe_stats** %6, align 8
  %38 = call i32 %33(i32 %36, %struct.qed_fcoe_stats* %37)
  %39 = load %struct.qed_fcoe_stats*, %struct.qed_fcoe_stats** %6, align 8
  %40 = getelementptr inbounds %struct.qed_fcoe_stats, %struct.qed_fcoe_stats* %39, i32 0, i32 9
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.qed_fcoe_stats*, %struct.qed_fcoe_stats** %6, align 8
  %43 = getelementptr inbounds %struct.qed_fcoe_stats, %struct.qed_fcoe_stats* %42, i32 0, i32 8
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = load %struct.qed_fcoe_stats*, %struct.qed_fcoe_stats** %6, align 8
  %47 = getelementptr inbounds %struct.qed_fcoe_stats, %struct.qed_fcoe_stats* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %3, align 8
  %51 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %50, i32 0, i32 13
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 8
  %56 = load %struct.qed_fcoe_stats*, %struct.qed_fcoe_stats** %6, align 8
  %57 = getelementptr inbounds %struct.qed_fcoe_stats, %struct.qed_fcoe_stats* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.qed_fcoe_stats*, %struct.qed_fcoe_stats** %6, align 8
  %60 = getelementptr inbounds %struct.qed_fcoe_stats, %struct.qed_fcoe_stats* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = load %struct.qed_fcoe_stats*, %struct.qed_fcoe_stats** %6, align 8
  %64 = getelementptr inbounds %struct.qed_fcoe_stats, %struct.qed_fcoe_stats* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %3, align 8
  %68 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %67, i32 0, i32 12
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %66
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 4
  %73 = load %struct.qed_fcoe_stats*, %struct.qed_fcoe_stats** %6, align 8
  %74 = getelementptr inbounds %struct.qed_fcoe_stats, %struct.qed_fcoe_stats* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @do_div(i32 %75, i32 1000000)
  %77 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %3, align 8
  %78 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %77, i32 0, i32 11
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %76
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 8
  %83 = load %struct.qed_fcoe_stats*, %struct.qed_fcoe_stats** %6, align 8
  %84 = getelementptr inbounds %struct.qed_fcoe_stats, %struct.qed_fcoe_stats* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @do_div(i32 %85, i32 1000000)
  %87 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %3, align 8
  %88 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %87, i32 0, i32 10
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  %93 = load %struct.qed_fcoe_stats*, %struct.qed_fcoe_stats** %6, align 8
  %94 = getelementptr inbounds %struct.qed_fcoe_stats, %struct.qed_fcoe_stats* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sdiv i32 %95, 4
  %97 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %3, align 8
  %98 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.qed_fcoe_stats*, %struct.qed_fcoe_stats** %6, align 8
  %102 = getelementptr inbounds %struct.qed_fcoe_stats, %struct.qed_fcoe_stats* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sdiv i32 %103, 4
  %105 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %3, align 8
  %106 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load %struct.qed_fcoe_stats*, %struct.qed_fcoe_stats** %6, align 8
  %110 = getelementptr inbounds %struct.qed_fcoe_stats, %struct.qed_fcoe_stats* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %3, align 8
  %113 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %111
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 8
  %118 = load %struct.qed_fcoe_stats*, %struct.qed_fcoe_stats** %6, align 8
  %119 = getelementptr inbounds %struct.qed_fcoe_stats, %struct.qed_fcoe_stats* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %3, align 8
  %122 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %121, i32 0, i32 8
  store i64 %120, i64* %122, align 8
  %123 = load %struct.qed_fcoe_stats*, %struct.qed_fcoe_stats** %6, align 8
  %124 = getelementptr inbounds %struct.qed_fcoe_stats, %struct.qed_fcoe_stats* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %3, align 8
  %127 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %125
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 4
  %132 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %133 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %3, align 8
  %136 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %134
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %136, align 8
  %141 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %142 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %3, align 8
  %145 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %143
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 4
  %150 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %151 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %3, align 8
  %154 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %152
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %154, align 8
  %159 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %160 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %3, align 8
  %163 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %165, %161
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %163, align 4
  %168 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %169 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %3, align 8
  %172 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %170
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %172, align 8
  %177 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %178 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %177, i32 0, i32 0
  %179 = call i32 @mutex_unlock(i32* %178)
  %180 = load %struct.qed_fcoe_stats*, %struct.qed_fcoe_stats** %6, align 8
  %181 = call i32 @kfree(%struct.qed_fcoe_stats* %180)
  br label %182

182:                                              ; preds = %27, %23, %17
  %183 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %3, align 8
  ret %struct.fc_host_statistics* %183
}

declare dso_local %struct.fc_lport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.qedf_ctx* @lport_priv(%struct.fc_lport*) #1

declare dso_local %struct.fc_host_statistics* @fc_get_host_stats(%struct.Scsi_Host*) #1

declare dso_local %struct.qed_fcoe_stats* @kmalloc(i32, i32) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @do_div(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.qed_fcoe_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
