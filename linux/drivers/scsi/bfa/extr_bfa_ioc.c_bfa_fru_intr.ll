; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_fru_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_fru_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfi_mbmsg_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bfa_fru_s = type { i32, i32, i32, i32, i32, i32 (i32, i32)*, i32, i32 }
%struct.bfi_fru_rsp_s = type { i32, i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@BFI_FRUVPD_H2I_WRITE_REQ = common dso_local global i32 0, align 4
@BFI_TFRU_H2I_WRITE_REQ = common dso_local global i32 0, align 4
@BFI_FRUVPD_H2I_READ_REQ = common dso_local global i32 0, align 4
@BFI_TFRU_H2I_READ_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fru_intr(i8* %0, %struct.bfi_mbmsg_s* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfi_mbmsg_s*, align 8
  %5 = alloca %struct.bfa_fru_s*, align 8
  %6 = alloca %struct.bfi_fru_rsp_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.bfi_mbmsg_s* %1, %struct.bfi_mbmsg_s** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.bfa_fru_s*
  store %struct.bfa_fru_s* %10, %struct.bfa_fru_s** %5, align 8
  %11 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %12 = bitcast %struct.bfi_mbmsg_s* %11 to %struct.bfi_fru_rsp_s*
  store %struct.bfi_fru_rsp_s* %12, %struct.bfi_fru_rsp_s** %6, align 8
  %13 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %14 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %15 = getelementptr inbounds %struct.bfi_mbmsg_s, %struct.bfi_mbmsg_s* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bfa_trc(%struct.bfa_fru_s* %13, i32 %17)
  %19 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %20 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %25 = call i32 @bfa_trc(%struct.bfa_fru_s* %24, i32 39321)
  br label %203

26:                                               ; preds = %2
  %27 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %28 = getelementptr inbounds %struct.bfi_mbmsg_s, %struct.bfi_mbmsg_s* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %201 [
    i32 130, label %31
    i32 128, label %31
    i32 131, label %90
    i32 129, label %90
  ]

31:                                               ; preds = %26, %26
  %32 = load %struct.bfi_fru_rsp_s*, %struct.bfi_fru_rsp_s** %6, align 8
  %33 = getelementptr inbounds %struct.bfi_fru_rsp_s, %struct.bfi_fru_rsp_s* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @be32_to_cpu(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @bfa_trc(%struct.bfa_fru_s* %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @BFA_STATUS_OK, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %31
  %43 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %44 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %42, %31
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %50 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %52 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %51, i32 0, i32 6
  store i32 0, i32* %52, align 8
  %53 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %54 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %53, i32 0, i32 5
  %55 = load i32 (i32, i32)*, i32 (i32, i32)** %54, align 8
  %56 = icmp ne i32 (i32, i32)* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %47
  %58 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %59 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %58, i32 0, i32 5
  %60 = load i32 (i32, i32)*, i32 (i32, i32)** %59, align 8
  %61 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %62 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %65 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 %60(i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %57, %47
  br label %89

69:                                               ; preds = %42
  %70 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %71 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %72 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @bfa_trc(%struct.bfa_fru_s* %70, i32 %73)
  %75 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %76 = getelementptr inbounds %struct.bfi_mbmsg_s, %struct.bfi_mbmsg_s* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 130
  br i1 %79, label %80, label %84

80:                                               ; preds = %69
  %81 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %82 = load i32, i32* @BFI_FRUVPD_H2I_WRITE_REQ, align 4
  %83 = call i32 @bfa_fru_write_send(%struct.bfa_fru_s* %81, i32 %82)
  br label %88

84:                                               ; preds = %69
  %85 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %86 = load i32, i32* @BFI_TFRU_H2I_WRITE_REQ, align 4
  %87 = call i32 @bfa_fru_write_send(%struct.bfa_fru_s* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %80
  br label %89

89:                                               ; preds = %88, %68
  br label %203

90:                                               ; preds = %26, %26
  %91 = load %struct.bfi_fru_rsp_s*, %struct.bfi_fru_rsp_s** %6, align 8
  %92 = getelementptr inbounds %struct.bfi_fru_rsp_s, %struct.bfi_fru_rsp_s* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @be32_to_cpu(i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @bfa_trc(%struct.bfa_fru_s* %95, i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @BFA_STATUS_OK, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %90
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %104 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %106 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %105, i32 0, i32 6
  store i32 0, i32* %106, align 8
  %107 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %108 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %107, i32 0, i32 5
  %109 = load i32 (i32, i32)*, i32 (i32, i32)** %108, align 8
  %110 = icmp ne i32 (i32, i32)* %109, null
  br i1 %110, label %111, label %122

111:                                              ; preds = %101
  %112 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %113 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %112, i32 0, i32 5
  %114 = load i32 (i32, i32)*, i32 (i32, i32)** %113, align 8
  %115 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %116 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %119 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 %114(i32 %117, i32 %120)
  br label %122

122:                                              ; preds = %111, %101
  br label %200

123:                                              ; preds = %90
  %124 = load %struct.bfi_fru_rsp_s*, %struct.bfi_fru_rsp_s** %6, align 8
  %125 = getelementptr inbounds %struct.bfi_fru_rsp_s, %struct.bfi_fru_rsp_s* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @be32_to_cpu(i32 %126)
  store i32 %127, i32* %8, align 4
  %128 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %129 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %130 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @bfa_trc(%struct.bfa_fru_s* %128, i32 %131)
  %133 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @bfa_trc(%struct.bfa_fru_s* %133, i32 %134)
  %136 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %137 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %140 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %138, %141
  %143 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %144 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @memcpy(i32 %142, i32 %145, i32 %146)
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %150 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sub nsw i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %155 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, %153
  store i32 %157, i32* %155, align 8
  %158 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %159 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %184

162:                                              ; preds = %123
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %165 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %167 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %166, i32 0, i32 6
  store i32 0, i32* %167, align 8
  %168 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %169 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %168, i32 0, i32 5
  %170 = load i32 (i32, i32)*, i32 (i32, i32)** %169, align 8
  %171 = icmp ne i32 (i32, i32)* %170, null
  br i1 %171, label %172, label %183

172:                                              ; preds = %162
  %173 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %174 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %173, i32 0, i32 5
  %175 = load i32 (i32, i32)*, i32 (i32, i32)** %174, align 8
  %176 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %177 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %180 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 %175(i32 %178, i32 %181)
  br label %183

183:                                              ; preds = %172, %162
  br label %199

184:                                              ; preds = %123
  %185 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %186 = getelementptr inbounds %struct.bfi_mbmsg_s, %struct.bfi_mbmsg_s* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 131
  br i1 %189, label %190, label %194

190:                                              ; preds = %184
  %191 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %192 = load i32, i32* @BFI_FRUVPD_H2I_READ_REQ, align 4
  %193 = call i32 @bfa_fru_read_send(%struct.bfa_fru_s* %191, i32 %192)
  br label %198

194:                                              ; preds = %184
  %195 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %5, align 8
  %196 = load i32, i32* @BFI_TFRU_H2I_READ_REQ, align 4
  %197 = call i32 @bfa_fru_read_send(%struct.bfa_fru_s* %195, i32 %196)
  br label %198

198:                                              ; preds = %194, %190
  br label %199

199:                                              ; preds = %198, %183
  br label %200

200:                                              ; preds = %199, %122
  br label %203

201:                                              ; preds = %26
  %202 = call i32 @WARN_ON(i32 1)
  br label %203

203:                                              ; preds = %23, %201, %200, %89
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_fru_s*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @bfa_fru_write_send(%struct.bfa_fru_s*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bfa_fru_read_send(%struct.bfa_fru_s*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
