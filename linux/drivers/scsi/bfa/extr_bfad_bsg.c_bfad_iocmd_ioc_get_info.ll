; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_ioc_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_ioc_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { %struct.bfad_im_port_s* }
%struct.bfad_im_port_s = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bfa_bsg_ioc_info_s = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_port_attr_s = type { i32, i32, i32, i32 }

@BFA_STRING_32 = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfad_s*, i8*)* @bfad_iocmd_ioc_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_iocmd_ioc_get_info(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfa_bsg_ioc_info_s*, align 8
  %7 = alloca %struct.bfad_im_port_s*, align 8
  %8 = alloca %struct.bfa_port_attr_s, align 4
  %9 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.bfa_bsg_ioc_info_s*
  store %struct.bfa_bsg_ioc_info_s* %11, %struct.bfa_bsg_ioc_info_s** %6, align 8
  %12 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %12, i32 0, i32 3
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %16, i32 0, i32 6
  %18 = call i32 @bfa_fcport_get_attr(i32* %17, %struct.bfa_port_attr_s* %8)
  %19 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %8, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bfa_bsg_ioc_info_s*, %struct.bfa_bsg_ioc_info_s** %6, align 8
  %22 = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, %struct.bfa_bsg_ioc_info_s* %21, i32 0, i32 14
  store i32 %20, i32* %22, align 8
  %23 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %8, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bfa_bsg_ioc_info_s*, %struct.bfa_bsg_ioc_info_s** %6, align 8
  %26 = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, %struct.bfa_bsg_ioc_info_s* %25, i32 0, i32 13
  store i32 %24, i32* %26, align 4
  %27 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %28 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %27, i32 0, i32 6
  %29 = call i32 @bfa_get_type(i32* %28)
  %30 = load %struct.bfa_bsg_ioc_info_s*, %struct.bfa_bsg_ioc_info_s** %6, align 8
  %31 = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, %struct.bfa_bsg_ioc_info_s* %30, i32 0, i32 12
  store i32 %29, i32* %31, align 8
  %32 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %32, i32 0, i32 6
  %34 = call i32 @bfa_get_mac(i32* %33)
  %35 = load %struct.bfa_bsg_ioc_info_s*, %struct.bfa_bsg_ioc_info_s** %6, align 8
  %36 = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, %struct.bfa_bsg_ioc_info_s* %35, i32 0, i32 11
  store i32 %34, i32* %36, align 4
  %37 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %38 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %37, i32 0, i32 6
  %39 = call i32 @bfa_get_mfg_mac(i32* %38)
  %40 = load %struct.bfa_bsg_ioc_info_s*, %struct.bfa_bsg_ioc_info_s** %6, align 8
  %41 = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, %struct.bfa_bsg_ioc_info_s* %40, i32 0, i32 10
  store i32 %39, i32* %41, align 8
  %42 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %43 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %42, i32 0, i32 6
  %44 = load %struct.bfa_bsg_ioc_info_s*, %struct.bfa_bsg_ioc_info_s** %6, align 8
  %45 = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, %struct.bfa_bsg_ioc_info_s* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bfa_get_adapter_serial_num(i32* %43, i32 %46)
  %48 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %8, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.bfa_bsg_ioc_info_s*, %struct.bfa_bsg_ioc_info_s** %6, align 8
  %51 = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, %struct.bfa_bsg_ioc_info_s* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 8
  %52 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %8, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bfa_bsg_ioc_info_s*, %struct.bfa_bsg_ioc_info_s** %6, align 8
  %55 = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, %struct.bfa_bsg_ioc_info_s* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %57 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.bfa_bsg_ioc_info_s*, %struct.bfa_bsg_ioc_info_s** %6, align 8
  %60 = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, %struct.bfa_bsg_ioc_info_s* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %62 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %63, align 8
  store %struct.bfad_im_port_s* %64, %struct.bfad_im_port_s** %7, align 8
  %65 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %7, align 8
  %66 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.bfa_bsg_ioc_info_s*, %struct.bfa_bsg_ioc_info_s** %6, align 8
  %71 = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, %struct.bfa_bsg_ioc_info_s* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  %72 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %73 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %72, i32 0, i32 3
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load %struct.bfa_bsg_ioc_info_s*, %struct.bfa_bsg_ioc_info_s** %6, align 8
  %77 = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, %struct.bfa_bsg_ioc_info_s* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %80 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @strcpy(i8* %78, i32 %81)
  %83 = load %struct.bfa_bsg_ioc_info_s*, %struct.bfa_bsg_ioc_info_s** %6, align 8
  %84 = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, %struct.bfa_bsg_ioc_info_s* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %87 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @strcpy(i8* %85, i32 %88)
  %90 = load %struct.bfa_bsg_ioc_info_s*, %struct.bfa_bsg_ioc_info_s** %6, align 8
  %91 = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, %struct.bfa_bsg_ioc_info_s* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %94 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @strcpy(i8* %92, i32 %95)
  %97 = load %struct.bfa_bsg_ioc_info_s*, %struct.bfa_bsg_ioc_info_s** %6, align 8
  %98 = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, %struct.bfa_bsg_ioc_info_s* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %101 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @strcpy(i8* %99, i32 %102)
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %121, %2
  %105 = load %struct.bfa_bsg_ioc_info_s*, %struct.bfa_bsg_ioc_info_s** %6, align 8
  %106 = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, %struct.bfa_bsg_ioc_info_s* %105, i32 0, i32 3
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 58
  br i1 %113, label %114, label %118

114:                                              ; preds = %104
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @BFA_STRING_32, align 4
  %117 = icmp slt i32 %115, %116
  br label %118

118:                                              ; preds = %114, %104
  %119 = phi i1 [ false, %104 ], [ %117, %114 ]
  br i1 %119, label %120, label %124

120:                                              ; preds = %118
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %104

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %142, %124
  %126 = load %struct.bfa_bsg_ioc_info_s*, %struct.bfa_bsg_ioc_info_s** %6, align 8
  %127 = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, %struct.bfa_bsg_ioc_info_s* %126, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 58
  br i1 %135, label %136, label %140

136:                                              ; preds = %125
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @BFA_STRING_32, align 4
  %139 = icmp slt i32 %137, %138
  br label %140

140:                                              ; preds = %136, %125
  %141 = phi i1 [ false, %125 ], [ %139, %136 ]
  br i1 %141, label %142, label %143

142:                                              ; preds = %140
  br label %125

143:                                              ; preds = %140
  %144 = load %struct.bfa_bsg_ioc_info_s*, %struct.bfa_bsg_ioc_info_s** %6, align 8
  %145 = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, %struct.bfa_bsg_ioc_info_s* %144, i32 0, i32 3
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  store i8 0, i8* %149, align 1
  %150 = load i32, i32* @BFA_STATUS_OK, align 4
  %151 = load %struct.bfa_bsg_ioc_info_s*, %struct.bfa_bsg_ioc_info_s** %6, align 8
  %152 = getelementptr inbounds %struct.bfa_bsg_ioc_info_s, %struct.bfa_bsg_ioc_info_s* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_fcport_get_attr(i32*, %struct.bfa_port_attr_s*) #1

declare dso_local i32 @bfa_get_type(i32*) #1

declare dso_local i32 @bfa_get_mac(i32*) #1

declare dso_local i32 @bfa_get_mfg_mac(i32*) #1

declare dso_local i32 @bfa_get_adapter_serial_num(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @strcpy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
