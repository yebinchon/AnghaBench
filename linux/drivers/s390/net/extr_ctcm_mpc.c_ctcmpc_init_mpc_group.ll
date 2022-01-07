; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_mpc.c_ctcmpc_init_mpc_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_mpc.c_ctcmpc_init_mpc_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc_group = type { %struct.xid2*, i32*, %struct.TYPE_4__*, %struct.th_header*, i64, %struct.TYPE_4__*, i32*, i64, %struct.th_header*, i64, i32 }
%struct.xid2 = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.th_header = type { i32 }
%struct.ctcm_priv = type { %struct.mpc_group*, %struct.xid2* }

@MPC_SETUP = common dso_local global i32 0, align 4
@CTC_DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Enter %s(%p)\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mpcg\00", align 1
@mpcg_state_names = common dso_local global i32 0, align 4
@mpcg_event_names = common dso_local global i32 0, align 4
@MPCG_NR_STATES = common dso_local global i32 0, align 4
@MPCG_NR_EVENTS = common dso_local global i32 0, align 4
@mpcg_fsm = common dso_local global i32 0, align 4
@mpcg_fsm_len = common dso_local global i32 0, align 4
@MPCG_STATE_RESET = common dso_local global i32 0, align 4
@MPC_BUFSIZE_DEFAULT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@thnorm = common dso_local global i8 0, align 1
@TH_HEADER_LENGTH = common dso_local global i32 0, align 4
@init_xid = common dso_local global i8 0, align 1
@XID2_LENGTH = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"VTAM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mpc_group* @ctcmpc_init_mpc_group(%struct.ctcm_priv* %0) #0 {
  %2 = alloca %struct.mpc_group*, align 8
  %3 = alloca %struct.ctcm_priv*, align 8
  %4 = alloca %struct.mpc_group*, align 8
  store %struct.ctcm_priv* %0, %struct.ctcm_priv** %3, align 8
  %5 = load i32, i32* @MPC_SETUP, align 4
  %6 = load i32, i32* @CTC_DBF_INFO, align 4
  %7 = load i32, i32* @CTCM_FUNTAIL, align 4
  %8 = load %struct.ctcm_priv*, %struct.ctcm_priv** %3, align 8
  %9 = call i32 @CTCM_DBF_TEXT_(i32 %5, i32 %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %7, %struct.ctcm_priv* %8)
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mpc_group* @kzalloc(i32 88, i32 %10)
  store %struct.mpc_group* %11, %struct.mpc_group** %4, align 8
  %12 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %13 = icmp eq %struct.mpc_group* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.mpc_group* null, %struct.mpc_group** %2, align 8
  br label %173

15:                                               ; preds = %1
  %16 = load i32, i32* @mpcg_state_names, align 4
  %17 = load i32, i32* @mpcg_event_names, align 4
  %18 = load i32, i32* @MPCG_NR_STATES, align 4
  %19 = load i32, i32* @MPCG_NR_EVENTS, align 4
  %20 = load i32, i32* @mpcg_fsm, align 4
  %21 = load i32, i32* @mpcg_fsm_len, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32* @init_fsm(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %25 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %24, i32 0, i32 6
  store i32* %23, i32** %25, align 8
  %26 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %27 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %15
  %31 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %32 = call i32 @kfree(%struct.mpc_group* %31)
  store %struct.mpc_group* null, %struct.mpc_group** %2, align 8
  br label %173

33:                                               ; preds = %15
  %34 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %35 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %34, i32 0, i32 6
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @MPCG_STATE_RESET, align 4
  %38 = call i32 @fsm_newstate(i32* %36, i32 %37)
  %39 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %40 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %39, i32 0, i32 6
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %43 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %42, i32 0, i32 10
  %44 = call i32 @fsm_settimer(i32* %41, i32* %43)
  %45 = load i32, i32* @MPC_BUFSIZE_DEFAULT, align 4
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = load i32, i32* @GFP_DMA, align 4
  %48 = or i32 %46, %47
  %49 = call i8* @__dev_alloc_skb(i32 %45, i32 %48)
  %50 = bitcast i8* %49 to %struct.TYPE_4__*
  %51 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %52 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %51, i32 0, i32 5
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %52, align 8
  %53 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %54 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %53, i32 0, i32 5
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = icmp eq %struct.TYPE_4__* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %33
  %58 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %59 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @kfree_fsm(i32* %60)
  %62 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %63 = call i32 @kfree(%struct.mpc_group* %62)
  store %struct.mpc_group* null, %struct.mpc_group** %2, align 8
  br label %173

64:                                               ; preds = %33
  %65 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %66 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %65, i32 0, i32 5
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %71 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %70, i32 0, i32 9
  store i64 %69, i64* %71, align 8
  %72 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %73 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %72, i32 0, i32 5
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.th_header*
  %78 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %79 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %78, i32 0, i32 8
  store %struct.th_header* %77, %struct.th_header** %79, align 8
  %80 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %81 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %80, i32 0, i32 5
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %84 = call i32 @skb_put_data(%struct.TYPE_4__* %82, i8* @thnorm, i32 %83)
  %85 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %86 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %85, i32 0, i32 5
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = call i64 @skb_tail_pointer(%struct.TYPE_4__* %87)
  %89 = inttoptr i64 %88 to %struct.xid2*
  %90 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %91 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %90, i32 0, i32 0
  store %struct.xid2* %89, %struct.xid2** %91, align 8
  %92 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %93 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %92, i32 0, i32 5
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* @XID2_LENGTH, align 4
  %96 = call i32 @skb_put_data(%struct.TYPE_4__* %94, i8* @init_xid, i32 %95)
  %97 = load i32, i32* @jiffies, align 4
  %98 = or i32 %97, -1048576
  %99 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %100 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %99, i32 0, i32 0
  %101 = load %struct.xid2*, %struct.xid2** %100, align 8
  %102 = getelementptr inbounds %struct.xid2, %struct.xid2* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 4
  %103 = load i32, i32* @jiffies, align 4
  %104 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %105 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %104, i32 0, i32 0
  %106 = load %struct.xid2*, %struct.xid2** %105, align 8
  %107 = getelementptr inbounds %struct.xid2, %struct.xid2* %106, i32 0, i32 1
  store i32 %103, i32* %107, align 4
  %108 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %109 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %108, i32 0, i32 5
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = call i64 @skb_tail_pointer(%struct.TYPE_4__* %110)
  %112 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %113 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %112, i32 0, i32 7
  store i64 %111, i64* %113, align 8
  %114 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %115 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %114, i32 0, i32 5
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = call i32 @skb_put_data(%struct.TYPE_4__* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %118 = load i32, i32* @MPC_BUFSIZE_DEFAULT, align 4
  %119 = load i32, i32* @GFP_ATOMIC, align 4
  %120 = load i32, i32* @GFP_DMA, align 4
  %121 = or i32 %119, %120
  %122 = call i8* @__dev_alloc_skb(i32 %118, i32 %121)
  %123 = bitcast i8* %122 to %struct.TYPE_4__*
  %124 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %125 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %124, i32 0, i32 2
  store %struct.TYPE_4__* %123, %struct.TYPE_4__** %125, align 8
  %126 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %127 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %126, i32 0, i32 2
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = icmp eq %struct.TYPE_4__* %128, null
  br i1 %129, label %130, label %141

130:                                              ; preds = %64
  %131 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %132 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %131, i32 0, i32 6
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @kfree_fsm(i32* %133)
  %135 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %136 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %135, i32 0, i32 5
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = call i32 @dev_kfree_skb(%struct.TYPE_4__* %137)
  %139 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %140 = call i32 @kfree(%struct.mpc_group* %139)
  store %struct.mpc_group* null, %struct.mpc_group** %2, align 8
  br label %173

141:                                              ; preds = %64
  %142 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %143 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %142, i32 0, i32 2
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %148 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %147, i32 0, i32 4
  store i64 %146, i64* %148, align 8
  %149 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %150 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %149, i32 0, i32 2
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to %struct.th_header*
  %155 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %156 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %155, i32 0, i32 3
  store %struct.th_header* %154, %struct.th_header** %156, align 8
  %157 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %158 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %157, i32 0, i32 2
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %161 = call i32 @skb_put_data(%struct.TYPE_4__* %159, i8* @thnorm, i32 %160)
  %162 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %163 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %162, i32 0, i32 1
  store i32* null, i32** %163, align 8
  %164 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %165 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %164, i32 0, i32 0
  %166 = load %struct.xid2*, %struct.xid2** %165, align 8
  %167 = load %struct.ctcm_priv*, %struct.ctcm_priv** %3, align 8
  %168 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %167, i32 0, i32 1
  store %struct.xid2* %166, %struct.xid2** %168, align 8
  %169 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %170 = load %struct.ctcm_priv*, %struct.ctcm_priv** %3, align 8
  %171 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %170, i32 0, i32 0
  store %struct.mpc_group* %169, %struct.mpc_group** %171, align 8
  %172 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  store %struct.mpc_group* %172, %struct.mpc_group** %2, align 8
  br label %173

173:                                              ; preds = %141, %130, %57, %30, %14
  %174 = load %struct.mpc_group*, %struct.mpc_group** %2, align 8
  ret %struct.mpc_group* %174
}

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, %struct.ctcm_priv*) #1

declare dso_local %struct.mpc_group* @kzalloc(i32, i32) #1

declare dso_local i32* @init_fsm(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.mpc_group*) #1

declare dso_local i32 @fsm_newstate(i32*, i32) #1

declare dso_local i32 @fsm_settimer(i32*, i32*) #1

declare dso_local i8* @__dev_alloc_skb(i32, i32) #1

declare dso_local i32 @kfree_fsm(i32*) #1

declare dso_local i32 @skb_put_data(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i64 @skb_tail_pointer(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
