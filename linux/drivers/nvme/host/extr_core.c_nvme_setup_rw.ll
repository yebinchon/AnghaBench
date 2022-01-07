; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_setup_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_setup_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32, i32, i64, %struct.TYPE_3__*, %struct.nvme_ctrl* }
%struct.TYPE_3__ = type { i32 }
%struct.nvme_ctrl = type { i64 }
%struct.request = type { i32 }
%struct.nvme_command = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i32, i8*, i32 }

@REQ_FUA = common dso_local global i32 0, align 4
@NVME_RW_FUA = common dso_local global i32 0, align 4
@REQ_FAILFAST_DEV = common dso_local global i32 0, align 4
@REQ_RAHEAD = common dso_local global i32 0, align 4
@NVME_RW_LR = common dso_local global i32 0, align 4
@NVME_RW_DSM_FREQ_PREFETCH = common dso_local global i32 0, align 4
@nvme_cmd_write = common dso_local global i32 0, align 4
@nvme_cmd_read = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i64 0, align 8
@BLK_STS_NOTSUPP = common dso_local global i32 0, align 4
@NVME_RW_PRINFO_PRACT = common dso_local global i32 0, align 4
@NVME_RW_PRINFO_PRCHK_GUARD = common dso_local global i32 0, align 4
@NVME_RW_PRINFO_PRCHK_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.request*, %struct.nvme_command*)* @nvme_setup_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_setup_rw(%struct.nvme_ns* %0, %struct.request* %1, %struct.nvme_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_ns*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.nvme_command*, align 8
  %8 = alloca %struct.nvme_ctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvme_ns* %0, %struct.nvme_ns** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.nvme_command* %2, %struct.nvme_command** %7, align 8
  %11 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %12 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %11, i32 0, i32 4
  %13 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %12, align 8
  store %struct.nvme_ctrl* %13, %struct.nvme_ctrl** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.request*, %struct.request** %6, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @REQ_FUA, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @NVME_RW_FUA, align 4
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %20, %3
  %25 = load %struct.request*, %struct.request** %6, align 8
  %26 = getelementptr inbounds %struct.request, %struct.request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @REQ_FAILFAST_DEV, align 4
  %29 = load i32, i32* @REQ_RAHEAD, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i32, i32* @NVME_RW_LR, align 4
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %33, %24
  %38 = load %struct.request*, %struct.request** %6, align 8
  %39 = getelementptr inbounds %struct.request, %struct.request* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @REQ_RAHEAD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @NVME_RW_DSM_FREQ_PREFETCH, align 4
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %44, %37
  %49 = load %struct.request*, %struct.request** %6, align 8
  %50 = call i64 @rq_data_dir(%struct.request* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @nvme_cmd_write, align 4
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @nvme_cmd_read, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %59 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 6
  store i32 %57, i32* %60, align 8
  %61 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %62 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %61, i32 0, i32 3
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @cpu_to_le32(i32 %65)
  %67 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %68 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 5
  store i8* %66, i8** %69, align 8
  %70 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %71 = load %struct.request*, %struct.request** %6, align 8
  %72 = call i32 @blk_rq_pos(%struct.request* %71)
  %73 = call i32 @nvme_block_nr(%struct.nvme_ns* %70, i32 %72)
  %74 = call i32 @cpu_to_le64(i32 %73)
  %75 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %76 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  store i32 %74, i32* %77, align 8
  %78 = load %struct.request*, %struct.request** %6, align 8
  %79 = call i32 @blk_rq_bytes(%struct.request* %78)
  %80 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %81 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = ashr i32 %79, %82
  %84 = sub nsw i32 %83, 1
  %85 = call i8* @cpu_to_le16(i32 %84)
  %86 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %87 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  store i8* %85, i8** %88, align 8
  %89 = load %struct.request*, %struct.request** %6, align 8
  %90 = call i64 @req_op(%struct.request* %89)
  %91 = load i64, i64* @REQ_OP_WRITE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %56
  %94 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %8, align 8
  %95 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %8, align 8
  %100 = load %struct.request*, %struct.request** %6, align 8
  %101 = call i32 @nvme_assign_write_stream(%struct.nvme_ctrl* %99, %struct.request* %100, i32* %9, i32* %10)
  br label %102

102:                                              ; preds = %98, %93, %56
  %103 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %104 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %146

107:                                              ; preds = %102
  %108 = load %struct.request*, %struct.request** %6, align 8
  %109 = call i32 @blk_integrity_rq(%struct.request* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %125, label %111

111:                                              ; preds = %107
  %112 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %113 = call i32 @nvme_ns_has_pi(%struct.nvme_ns* %112)
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = call i64 @WARN_ON_ONCE(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = load i32, i32* @BLK_STS_NOTSUPP, align 4
  store i32 %120, i32* %4, align 4
  br label %157

121:                                              ; preds = %111
  %122 = load i32, i32* @NVME_RW_PRINFO_PRACT, align 4
  %123 = load i32, i32* %9, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %121, %107
  %126 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %127 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  switch i32 %128, label %145 [
    i32 128, label %129
    i32 130, label %133
    i32 129, label %133
  ]

129:                                              ; preds = %125
  %130 = load i32, i32* @NVME_RW_PRINFO_PRCHK_GUARD, align 4
  %131 = load i32, i32* %9, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %9, align 4
  br label %145

133:                                              ; preds = %125, %125
  %134 = load i32, i32* @NVME_RW_PRINFO_PRCHK_GUARD, align 4
  %135 = load i32, i32* @NVME_RW_PRINFO_PRCHK_REF, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* %9, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %9, align 4
  %139 = load %struct.request*, %struct.request** %6, align 8
  %140 = call i32 @t10_pi_ref_tag(%struct.request* %139)
  %141 = call i8* @cpu_to_le32(i32 %140)
  %142 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %143 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  store i8* %141, i8** %144, align 8
  br label %145

145:                                              ; preds = %125, %133, %129
  br label %146

146:                                              ; preds = %145, %102
  %147 = load i32, i32* %9, align 4
  %148 = call i8* @cpu_to_le16(i32 %147)
  %149 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %150 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  store i8* %148, i8** %151, align 8
  %152 = load i32, i32* %10, align 4
  %153 = call i8* @cpu_to_le32(i32 %152)
  %154 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %155 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  store i8* %153, i8** %156, align 8
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %146, %119
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @nvme_block_nr(%struct.nvme_ns*, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i64 @req_op(%struct.request*) #1

declare dso_local i32 @nvme_assign_write_stream(%struct.nvme_ctrl*, %struct.request*, i32*, i32*) #1

declare dso_local i32 @blk_integrity_rq(%struct.request*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @nvme_ns_has_pi(%struct.nvme_ns*) #1

declare dso_local i32 @t10_pi_ref_tag(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
