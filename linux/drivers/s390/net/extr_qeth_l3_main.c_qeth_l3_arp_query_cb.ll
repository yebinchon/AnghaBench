; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_arp_query_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_arp_query_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_reply = type { i64 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_6__ = type { %struct.qeth_arp_query_data }
%struct.qeth_arp_query_data = type { i32, i8, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.qeth_arp_query_info = type { i32, i64, i64, i64, i32 }
%struct.qeth_arp_entrytype = type { i32 }
%struct.qeth_arp_qi_entry5 = type { %struct.qeth_arp_entrytype }

@.str = private unnamed_addr constant [9 x i8] c"arpquecb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"arpcberr\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"setaperr\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"anoen%i\00", align 1
@QETH_QARP_STRIP_ENTRIES = common dso_local global i32 0, align 4
@QETH_QARP_MEDIASPECIFIC_BYTES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"pmis\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"esz%i\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"qaer3%i\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"nove%i\00", align 1
@QETH_QARP_MASK_OFFSET = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"rc%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_l3_arp_query_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_arp_query_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_reply*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qeth_ipa_cmd*, align 8
  %9 = alloca %struct.qeth_arp_query_data*, align 8
  %10 = alloca %struct.qeth_arp_query_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.qeth_arp_entrytype*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %19 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %18, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.qeth_reply*, %struct.qeth_reply** %6, align 8
  %21 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.qeth_arp_query_info*
  store %struct.qeth_arp_query_info* %23, %struct.qeth_arp_query_info** %10, align 8
  %24 = load i64, i64* %7, align 8
  %25 = inttoptr i64 %24 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %25, %struct.qeth_ipa_cmd** %8, align 8
  %26 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %27 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %28 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %26, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %33 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %3
  %38 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %39 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %38, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %41 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %42 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %40, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %47 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @qeth_l3_arp_makerc(i32 %49)
  store i32 %50, i32* %4, align 4
  br label %262

51:                                               ; preds = %3
  %52 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %53 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %51
  %60 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %61 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %67 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %70 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %69, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %72 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %73 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %71, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %78 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @qeth_l3_arp_makerc(i32 %80)
  store i32 %81, i32* %4, align 4
  br label %262

82:                                               ; preds = %51
  %83 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %84 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store %struct.qeth_arp_query_data* %87, %struct.qeth_arp_query_data** %9, align 8
  %88 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %89 = load %struct.qeth_arp_query_data*, %struct.qeth_arp_query_data** %9, align 8
  %90 = getelementptr inbounds %struct.qeth_arp_query_data, %struct.qeth_arp_query_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %88, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  %93 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %94 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @QETH_QARP_STRIP_ENTRIES, align 4
  %97 = and i32 %95, %96
  %98 = icmp sgt i32 %97, 0
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %82
  %103 = load i32, i32* @QETH_QARP_MEDIASPECIFIC_BYTES, align 4
  br label %105

104:                                              ; preds = %82
  br label %105

105:                                              ; preds = %104, %102
  %106 = phi i32 [ %103, %102 ], [ 0, %104 ]
  store i32 %106, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %107

107:                                              ; preds = %207, %105
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.qeth_arp_query_data*, %struct.qeth_arp_query_data** %9, align 8
  %110 = getelementptr inbounds %struct.qeth_arp_query_data, %struct.qeth_arp_query_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %210

113:                                              ; preds = %107
  %114 = load %struct.qeth_arp_query_data*, %struct.qeth_arp_query_data** %9, align 8
  %115 = getelementptr inbounds %struct.qeth_arp_query_data, %struct.qeth_arp_query_data* %114, i32 0, i32 1
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  store i8* %118, i8** %15, align 8
  %119 = load i8*, i8** %15, align 8
  %120 = bitcast i8* %119 to %struct.qeth_arp_qi_entry5*
  %121 = getelementptr inbounds %struct.qeth_arp_qi_entry5, %struct.qeth_arp_qi_entry5* %120, i32 0, i32 0
  store %struct.qeth_arp_entrytype* %121, %struct.qeth_arp_entrytype** %17, align 8
  %122 = load %struct.qeth_arp_entrytype*, %struct.qeth_arp_entrytype** %17, align 8
  %123 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %124 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @arpentry_matches_prot(%struct.qeth_arp_entrytype* %122, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %113
  %130 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %131 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %130, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %132 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %133 = load %struct.qeth_arp_entrytype*, %struct.qeth_arp_entrytype** %17, align 8
  %134 = getelementptr inbounds %struct.qeth_arp_entrytype, %struct.qeth_arp_entrytype* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %132, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  br label %210

137:                                              ; preds = %113
  %138 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %139 = load %struct.qeth_arp_query_data*, %struct.qeth_arp_query_data** %9, align 8
  %140 = load %struct.qeth_arp_entrytype*, %struct.qeth_arp_entrytype** %17, align 8
  %141 = load i32, i32* %14, align 4
  %142 = call i64 @get_arp_entry_size(%struct.qeth_card* %138, %struct.qeth_arp_query_data* %139, %struct.qeth_arp_entrytype* %140, i32 %141)
  store i64 %142, i64* %16, align 8
  %143 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %144 = load i64, i64* %16, align 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %143, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %145)
  %147 = load i64, i64* %16, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %137
  br label %210

150:                                              ; preds = %137
  %151 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %152 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %155 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = sub nsw i64 %153, %156
  %158 = load i64, i64* %16, align 8
  %159 = icmp slt i64 %157, %158
  br i1 %159, label %160, label %171

160:                                              ; preds = %150
  %161 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %162 = load i32, i32* @ENOSPC, align 4
  %163 = sub nsw i32 0, %162
  %164 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %161, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %163)
  %165 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %166 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @memset(i64 %167, i32 0, i32 4)
  %169 = load i32, i32* @ENOSPC, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %4, align 4
  br label %262

171:                                              ; preds = %150
  %172 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %173 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %176 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %174, %177
  %179 = load %struct.qeth_arp_query_data*, %struct.qeth_arp_query_data** %9, align 8
  %180 = getelementptr inbounds %struct.qeth_arp_query_data, %struct.qeth_arp_query_data* %179, i32 0, i32 1
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i64, i64* %16, align 8
  %188 = trunc i64 %187 to i32
  %189 = call i32 @memcpy(i64 %178, i8* %186, i32 %188)
  %190 = load i64, i64* %16, align 8
  %191 = load i32, i32* %13, align 4
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %190, %192
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %195, %193
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %12, align 4
  %198 = load i64, i64* %16, align 8
  %199 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %200 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %201, %198
  store i64 %202, i64* %200, align 8
  %203 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %204 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %171
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %11, align 4
  br label %107

210:                                              ; preds = %149, %129, %107
  %211 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %212 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %218 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = icmp slt i64 %216, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %210
  store i32 1, i32* %4, align 4
  br label %262

225:                                              ; preds = %210
  %226 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %227 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %228 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %226, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %229)
  %231 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %232 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %235 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %234, i32 0, i32 4
  %236 = bitcast i32* %235 to i8*
  %237 = call i32 @memcpy(i64 %233, i8* %236, i32 4)
  %238 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %239 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @QETH_QARP_STRIP_ENTRIES, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %225
  %245 = load i32, i32* @QETH_QARP_STRIP_ENTRIES, align 4
  %246 = load %struct.qeth_arp_query_data*, %struct.qeth_arp_query_data** %9, align 8
  %247 = getelementptr inbounds %struct.qeth_arp_query_data, %struct.qeth_arp_query_data* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 4
  br label %250

250:                                              ; preds = %244, %225
  %251 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %252 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @QETH_QARP_MASK_OFFSET, align 8
  %255 = add nsw i64 %253, %254
  %256 = load %struct.qeth_arp_query_data*, %struct.qeth_arp_query_data** %9, align 8
  %257 = getelementptr inbounds %struct.qeth_arp_query_data, %struct.qeth_arp_query_data* %256, i32 0, i32 2
  %258 = bitcast i32* %257 to i8*
  %259 = call i32 @memcpy(i64 %255, i8* %258, i32 2)
  %260 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %261 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %260, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 0)
  store i32 0, i32* %4, align 4
  br label %262

262:                                              ; preds = %250, %224, %160, %59, %37
  %263 = load i32, i32* %4, align 4
  ret i32 %263
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local i32 @qeth_l3_arp_makerc(i32) #1

declare dso_local i32 @arpentry_matches_prot(%struct.qeth_arp_entrytype*, i32) #1

declare dso_local i64 @get_arp_entry_size(%struct.qeth_card*, %struct.qeth_arp_query_data*, %struct.qeth_arp_entrytype*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
