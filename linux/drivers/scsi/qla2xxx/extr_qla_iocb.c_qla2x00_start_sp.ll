; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_start_sp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_start_sp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32, %struct.TYPE_32__, i64, %struct.qla_qpair*, %struct.TYPE_34__* }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }
%struct.qla_qpair = type { i32, i32 }
%struct.TYPE_34__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"qla2x00_alloc_iocbs failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_start_sp(%struct.TYPE_33__* %0) #0 {
  %2 = alloca %struct.TYPE_33__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca %struct.qla_qpair*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %2, align 8
  %9 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  store %struct.TYPE_34__* %12, %struct.TYPE_34__** %4, align 8
  %13 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %13, i32 0, i32 0
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  store %struct.qla_hw_data* %15, %struct.qla_hw_data** %5, align 8
  %16 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %16, i32 0, i32 3
  %18 = load %struct.qla_qpair*, %struct.qla_qpair** %17, align 8
  store %struct.qla_qpair* %18, %struct.qla_qpair** %6, align 8
  %19 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %20 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_lock_irqsave(i32 %21, i64 %22)
  %24 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %24, i32 0, i32 3
  %26 = load %struct.qla_qpair*, %struct.qla_qpair** %25, align 8
  %27 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %28 = call i8* @__qla2x00_alloc_iocbs(%struct.qla_qpair* %26, %struct.TYPE_33__* %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @EAGAIN, align 4
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @ql_log_warn, align 4
  %34 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %35 = call i32 @ql_log(i32 %33, %struct.TYPE_34__* %34, i32 28684, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %183

36:                                               ; preds = %1
  %37 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %164 [
    i32 137, label %40
    i32 130, label %54
    i32 136, label %58
    i32 141, label %72
    i32 142, label %72
    i32 144, label %76
    i32 146, label %90
    i32 128, label %104
    i32 138, label %118
    i32 139, label %118
    i32 131, label %122
    i32 147, label %126
    i32 140, label %140
    i32 143, label %144
    i32 135, label %148
    i32 133, label %152
    i32 132, label %152
    i32 134, label %152
    i32 145, label %156
    i32 129, label %160
  ]

40:                                               ; preds = %36
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %42 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @qla24xx_login_iocb(%struct.TYPE_33__* %45, i8* %46)
  br label %52

48:                                               ; preds = %40
  %49 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @qla2x00_login_iocb(%struct.TYPE_33__* %49, i8* %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i32 [ %47, %44 ], [ %51, %48 ]
  br label %165

54:                                               ; preds = %36
  %55 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @qla24xx_prli_iocb(%struct.TYPE_33__* %55, i8* %56)
  br label %165

58:                                               ; preds = %36
  %59 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %60 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @qla24xx_logout_iocb(%struct.TYPE_33__* %63, i8* %64)
  br label %70

66:                                               ; preds = %58
  %67 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @qla2x00_logout_iocb(%struct.TYPE_33__* %67, i8* %68)
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i32 [ %65, %62 ], [ %69, %66 ]
  br label %165

72:                                               ; preds = %36, %36
  %73 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @qla24xx_els_iocb(%struct.TYPE_33__* %73, i8* %74)
  br label %165

76:                                               ; preds = %36
  %77 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %78 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @qla24xx_ct_iocb(%struct.TYPE_33__* %81, i8* %82)
  br label %88

84:                                               ; preds = %76
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @qla2x00_ct_iocb(%struct.TYPE_33__* %85, i8* %86)
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i32 [ %83, %80 ], [ %87, %84 ]
  br label %165

90:                                               ; preds = %36
  %91 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %92 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 @qla24xx_adisc_iocb(%struct.TYPE_33__* %95, i8* %96)
  br label %102

98:                                               ; preds = %90
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 @qla2x00_adisc_iocb(%struct.TYPE_33__* %99, i8* %100)
  br label %102

102:                                              ; preds = %98, %94
  %103 = phi i32 [ %97, %94 ], [ %101, %98 ]
  br label %165

104:                                              ; preds = %36
  %105 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %106 = call i32 @IS_QLAFX00(%struct.qla_hw_data* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @qlafx00_tm_iocb(%struct.TYPE_33__* %109, i8* %110)
  br label %116

112:                                              ; preds = %104
  %113 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 @qla24xx_tm_iocb(%struct.TYPE_33__* %113, i8* %114)
  br label %116

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %111, %108 ], [ %115, %112 ]
  br label %165

118:                                              ; preds = %36, %36
  %119 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = call i32 @qlafx00_fxdisc_iocb(%struct.TYPE_33__* %119, i8* %120)
  br label %165

122:                                              ; preds = %36
  %123 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 @qla_nvme_ls(%struct.TYPE_33__* %123, i8* %124)
  br label %165

126:                                              ; preds = %36
  %127 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %128 = call i32 @IS_QLAFX00(%struct.qla_hw_data* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %132 = load i8*, i8** %7, align 8
  %133 = call i32 @qlafx00_abort_iocb(%struct.TYPE_33__* %131, i8* %132)
  br label %138

134:                                              ; preds = %126
  %135 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %136 = load i8*, i8** %7, align 8
  %137 = call i32 @qla24xx_abort_iocb(%struct.TYPE_33__* %135, i8* %136)
  br label %138

138:                                              ; preds = %134, %130
  %139 = phi i32 [ %133, %130 ], [ %137, %134 ]
  br label %165

140:                                              ; preds = %36
  %141 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = call i32 @qla24xx_els_logo_iocb(%struct.TYPE_33__* %141, i8* %142)
  br label %165

144:                                              ; preds = %36
  %145 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %146 = load i8*, i8** %7, align 8
  %147 = call i32 @qla2x00_ctpthru_cmd_iocb(%struct.TYPE_33__* %145, i8* %146)
  br label %165

148:                                              ; preds = %36
  %149 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = call i32 @qla2x00_mb_iocb(%struct.TYPE_33__* %149, i8* %150)
  br label %165

152:                                              ; preds = %36, %36, %36
  %153 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %154 = load i8*, i8** %7, align 8
  %155 = call i32 @qla2x00_send_notify_ack_iocb(%struct.TYPE_33__* %153, i8* %154)
  br label %165

156:                                              ; preds = %36
  %157 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %158 = load i8*, i8** %7, align 8
  %159 = call i32 @qla25xx_ctrlvp_iocb(%struct.TYPE_33__* %157, i8* %158)
  br label %165

160:                                              ; preds = %36
  %161 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %162 = load i8*, i8** %7, align 8
  %163 = call i32 @qla24xx_prlo_iocb(%struct.TYPE_33__* %161, i8* %162)
  br label %165

164:                                              ; preds = %36
  br label %165

165:                                              ; preds = %164, %160, %156, %152, %148, %144, %140, %138, %122, %118, %116, %102, %88, %72, %70, %54, %52
  %166 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %173, i32 0, i32 0
  %175 = call i32 @add_timer(i32* %174)
  br label %176

176:                                              ; preds = %170, %165
  %177 = call i32 (...) @wmb()
  %178 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %179 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %180 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @qla2x00_start_iocbs(%struct.TYPE_34__* %178, i32 %181)
  br label %183

183:                                              ; preds = %176, %31
  %184 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %185 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i64, i64* %8, align 8
  %188 = call i32 @spin_unlock_irqrestore(i32 %186, i64 %187)
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i8* @__qla2x00_alloc_iocbs(%struct.qla_qpair*, %struct.TYPE_33__*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_34__*, i32, i8*) #1

declare dso_local i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @qla24xx_login_iocb(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @qla2x00_login_iocb(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @qla24xx_prli_iocb(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @qla24xx_logout_iocb(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @qla2x00_logout_iocb(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @qla24xx_els_iocb(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @qla24xx_ct_iocb(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @qla2x00_ct_iocb(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @qla24xx_adisc_iocb(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @qla2x00_adisc_iocb(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @IS_QLAFX00(%struct.qla_hw_data*) #1

declare dso_local i32 @qlafx00_tm_iocb(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @qla24xx_tm_iocb(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @qlafx00_fxdisc_iocb(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @qla_nvme_ls(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @qlafx00_abort_iocb(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @qla24xx_abort_iocb(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @qla24xx_els_logo_iocb(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @qla2x00_ctpthru_cmd_iocb(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @qla2x00_mb_iocb(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @qla2x00_send_notify_ack_iocb(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @qla25xx_ctrlvp_iocb(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @qla24xx_prlo_iocb(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @add_timer(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @qla2x00_start_iocbs(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
