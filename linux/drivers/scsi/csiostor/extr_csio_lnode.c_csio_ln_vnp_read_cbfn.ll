; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_vnp_read_cbfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_vnp_read_cbfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32 }
%struct.csio_mb = type { i64, i64 }
%struct.csio_lnode = type { i32, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.fw_fcoe_vnp_cmd = type { i64, i64, i32*, i32*, i32*, i32 }
%struct.fc_els_csp = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.fc_els_cssp = type { i32, i32, i32, i32 }

@FW_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"FCOE VNP read cmd returned error:0x%x\0A\00", align 1
@CSIO_LN_FC_ATTRIB_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, %struct.csio_mb*)* @csio_ln_vnp_read_cbfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_ln_vnp_read_cbfn(%struct.csio_hw* %0, %struct.csio_mb* %1) #0 {
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca %struct.csio_mb*, align 8
  %5 = alloca %struct.csio_lnode*, align 8
  %6 = alloca %struct.fw_fcoe_vnp_cmd*, align 8
  %7 = alloca %struct.fc_els_csp*, align 8
  %8 = alloca %struct.fc_els_cssp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  store %struct.csio_mb* %1, %struct.csio_mb** %4, align 8
  %11 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %12 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.csio_lnode*
  store %struct.csio_lnode* %14, %struct.csio_lnode** %5, align 8
  %15 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %16 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.fw_fcoe_vnp_cmd*
  store %struct.fw_fcoe_vnp_cmd* %18, %struct.fw_fcoe_vnp_cmd** %6, align 8
  %19 = load %struct.fw_fcoe_vnp_cmd*, %struct.fw_fcoe_vnp_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.fw_fcoe_vnp_cmd, %struct.fw_fcoe_vnp_cmd* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ntohl(i32 %21)
  %23 = call i32 @FW_CMD_RETVAL_G(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @FW_SUCCESS, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @csio_err(%struct.csio_hw* %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %32 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %33 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mempool_free(%struct.csio_mb* %31, i32 %34)
  br label %178

36:                                               ; preds = %2
  %37 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %38 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %37, i32 0, i32 1
  %39 = call i32 @spin_lock_irq(i32* %38)
  %40 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %41 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.fw_fcoe_vnp_cmd*, %struct.fw_fcoe_vnp_cmd** %6, align 8
  %44 = getelementptr inbounds %struct.fw_fcoe_vnp_cmd, %struct.fw_fcoe_vnp_cmd* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @memcpy(i32* %42, i32* %45, i32 8)
  %47 = load %struct.fw_fcoe_vnp_cmd*, %struct.fw_fcoe_vnp_cmd** %6, align 8
  %48 = getelementptr inbounds %struct.fw_fcoe_vnp_cmd, %struct.fw_fcoe_vnp_cmd* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = call i32 @memcpy(i32* %10, i32* %50, i32 12)
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @ntohl(i32 %52)
  %54 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %55 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %57 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = ashr i32 %58, 8
  %60 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %61 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %63 = call i32* @csio_ln_wwnn(%struct.csio_lnode* %62)
  %64 = load %struct.fw_fcoe_vnp_cmd*, %struct.fw_fcoe_vnp_cmd** %6, align 8
  %65 = getelementptr inbounds %struct.fw_fcoe_vnp_cmd, %struct.fw_fcoe_vnp_cmd* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @memcpy(i32* %63, i32* %66, i32 8)
  %68 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %69 = call i32* @csio_ln_wwpn(%struct.csio_lnode* %68)
  %70 = load %struct.fw_fcoe_vnp_cmd*, %struct.fw_fcoe_vnp_cmd** %6, align 8
  %71 = getelementptr inbounds %struct.fw_fcoe_vnp_cmd, %struct.fw_fcoe_vnp_cmd* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @memcpy(i32* %69, i32* %72, i32 8)
  %74 = load %struct.fw_fcoe_vnp_cmd*, %struct.fw_fcoe_vnp_cmd** %6, align 8
  %75 = getelementptr inbounds %struct.fw_fcoe_vnp_cmd, %struct.fw_fcoe_vnp_cmd* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.fc_els_csp*
  store %struct.fc_els_csp* %77, %struct.fc_els_csp** %7, align 8
  %78 = load %struct.fc_els_csp*, %struct.fc_els_csp** %7, align 8
  %79 = getelementptr inbounds %struct.fc_els_csp, %struct.fc_els_csp* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %82 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 6
  store i32 %80, i32* %84, align 8
  %85 = load %struct.fc_els_csp*, %struct.fc_els_csp** %7, align 8
  %86 = getelementptr inbounds %struct.fc_els_csp, %struct.fc_els_csp* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %89 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 5
  store i32 %87, i32* %91, align 4
  %92 = load %struct.fc_els_csp*, %struct.fc_els_csp** %7, align 8
  %93 = getelementptr inbounds %struct.fc_els_csp, %struct.fc_els_csp* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %96 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 4
  store i32 %94, i32* %98, align 8
  %99 = load %struct.fc_els_csp*, %struct.fc_els_csp** %7, align 8
  %100 = getelementptr inbounds %struct.fc_els_csp, %struct.fc_els_csp* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %103 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  store i32 %101, i32* %105, align 4
  %106 = load %struct.fc_els_csp*, %struct.fc_els_csp** %7, align 8
  %107 = getelementptr inbounds %struct.fc_els_csp, %struct.fc_els_csp* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %110 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  store i32 %108, i32* %112, align 8
  %113 = load %struct.fc_els_csp*, %struct.fc_els_csp** %7, align 8
  %114 = getelementptr inbounds %struct.fc_els_csp, %struct.fc_els_csp* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %117 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store i32 %115, i32* %119, align 4
  %120 = load %struct.fc_els_csp*, %struct.fc_els_csp** %7, align 8
  %121 = getelementptr inbounds %struct.fc_els_csp, %struct.fc_els_csp* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %124 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i32 %122, i32* %126, align 8
  %127 = load %struct.fw_fcoe_vnp_cmd*, %struct.fw_fcoe_vnp_cmd** %6, align 8
  %128 = getelementptr inbounds %struct.fw_fcoe_vnp_cmd, %struct.fw_fcoe_vnp_cmd* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to %struct.fc_els_cssp*
  store %struct.fc_els_cssp* %130, %struct.fc_els_cssp** %8, align 8
  %131 = load %struct.fc_els_cssp*, %struct.fc_els_cssp** %8, align 8
  %132 = getelementptr inbounds %struct.fc_els_cssp, %struct.fc_els_cssp* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %135 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i64 2
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  store i32 %133, i32* %139, align 4
  %140 = load %struct.fc_els_cssp*, %struct.fc_els_cssp** %8, align 8
  %141 = getelementptr inbounds %struct.fc_els_cssp, %struct.fc_els_cssp* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %144 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i64 2
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  store i32 %142, i32* %148, align 4
  %149 = load %struct.fc_els_cssp*, %struct.fc_els_cssp** %8, align 8
  %150 = getelementptr inbounds %struct.fc_els_cssp, %struct.fc_els_cssp* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %153 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i64 2
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  store i32 %151, i32* %157, align 4
  %158 = load %struct.fc_els_cssp*, %struct.fc_els_cssp** %8, align 8
  %159 = getelementptr inbounds %struct.fc_els_cssp, %struct.fc_els_cssp* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %162 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 2
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  store i32 %160, i32* %166, align 4
  %167 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %168 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %167, i32 0, i32 1
  %169 = call i32 @spin_unlock_irq(i32* %168)
  %170 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %171 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %172 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @mempool_free(%struct.csio_mb* %170, i32 %173)
  %175 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %176 = load i32, i32* @CSIO_LN_FC_ATTRIB_UPDATE, align 4
  %177 = call i32 @csio_lnode_async_event(%struct.csio_lnode* %175, i32 %176)
  br label %178

178:                                              ; preds = %36, %27
  ret void
}

declare dso_local i32 @FW_CMD_RETVAL_G(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*, i32) #1

declare dso_local i32 @mempool_free(%struct.csio_mb*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @csio_ln_wwnn(%struct.csio_lnode*) #1

declare dso_local i32* @csio_ln_wwpn(%struct.csio_lnode*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @csio_lnode_async_event(%struct.csio_lnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
